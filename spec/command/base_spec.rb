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
end
