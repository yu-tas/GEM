require "slack-notify"


client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#練習",
  username: "mybot",
  icon_emoji: ":shipit:",
  link_names: 1
)

client.test

client.notify("Hello There!")
client.notify("Another message", "#練習")
client.notify("Message", ["#練習", "#練習"])

client.notify("Hello There!", "@cada3986")