class Aaaa < SlackRubyBot::Commands::Base
  match(/^(?<bot>\S*)[\s]*(?<expression>aaaa.*)$/)

  def self.call(client, data, match)
    client.say(channel: data.channel, text: "Indeed, #{match[:expression]}")
    logger.info "HELP: #{client.owner}, user=#{data.user}, match=#{match.inspect}"
  end
end
