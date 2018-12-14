require './lib/under_privilege_ci/command/base'

RSpec.describe UnderPrivilegeCI::Command::Base do
  let(:command) { 'exit' }
  let(:args) { '0' }

  describe '#exit_code' do
    subject { described_class.new(command, args).exit_code }

    it { is_expected.to eq(0) }

    context 'command failed' do
      let(:args) { '1' }

      it { is_expected.to_not eq(0) }
    end
  end

  describe '#stdout' do
    subject { described_class.new(command, args).stdout }

    it { is_expected.to be_instance_of(String) }

    it { is_expected.to eq('') }

    context 'command printing to 0' do
      let(:command) { 'echo' }

      it { is_expected.to eq("#{args}\n") }
    end
  end

  describe '#stderr' do
    subject { described_class.new(command, args).stderr }

    it { is_expected.to be_instance_of(String) }

    it { is_expected.to eq('') }

    context 'command printing to 2' do
      let(:command) { 'echo' }
      let(:args) { 'test 1>&2' }

      it { is_expected.to eq("test\n") }
    end
  end
end
