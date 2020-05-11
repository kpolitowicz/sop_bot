require 'spec_helper'
require 'commands/aaaa'

describe Aaaa do
  let(:team) { Fabricate(:team) }
  let(:app) { SlackRubyBotServer::Server.new(team: team) }
  context 'aaaa' do
    it 'returns the same message, preceeded with indeed' do
      expect(message: "#{SlackRubyBot.config.user} aaaargh", channel: 'channel', user: 'user').to respond_with_slack_message(
        "Indeed, aaaargh"
      )
    end
  end
end
