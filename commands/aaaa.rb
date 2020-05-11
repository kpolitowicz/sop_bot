class Aaaa < SlackRubyBot::Commands::Base
  match(/^(?<bot>\S*)[\s]*.*(?<tenant_id>[-a-f0-9]{36}).*$/)

  def self.call(client, data, match)
    resp = <<~RESPONSE
    So you want to add Nearmap credits to #{match[:tenant_id]}?
    *Inserts SOP here*
    RESPONSE

    client.say(channel: data.channel, text: resp)
    logger.info "HELP: #{client.owner}, user=#{data.user}, match=#{match.inspect}"
  end
end
