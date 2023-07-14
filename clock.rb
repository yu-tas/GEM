require 'clockwork'
require 'slack-notify'
require 'active_support/time'

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end
  
  every(3.minutes, 'frequent.job') do
    client = SlackNotify::Client.new(
      webhook_url: "https://hooks.slack.com/services/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",
      channel: "#練習",
      username: "bot",
      link_names: 1
    )

    client.notify("Hello! This message was sent automatically by Clockwork!")
  end
end
