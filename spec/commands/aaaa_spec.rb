require 'spec_helper'
require 'commands/aaaa'

describe Aaaa do
  let(:team) { Fabricate(:team) }
  let(:app) { SlackRubyBotServer::Server.new(team: team) }
  context 'aaaa' do
    it 'returns the same message, preceeded with indeed' do
      msg = <<~CREDITS
      Tenant ID: 72d5f3a4-acf1-4db4-9b46-c623d18bc046
      Tenant Name: SunVena
      Credit Type: Nearmap
      Number of Credits: 100
      Cost per Credit: $1.05
      Urgency: EOD 5/4/20
      CREDITS

      resp = <<~EXPECTED_RESPONSE
      So you want to add Nearmap credits to 72d5f3a4-acf1-4db4-9b46-c623d18bc046?
      *Inserts SOP here*
      EXPECTED_RESPONSE

      expect(message: "#{SlackRubyBot.config.user} #{msg}", channel: 'channel', user: 'user').
        to respond_with_slack_message(resp)
    end
  end
end
