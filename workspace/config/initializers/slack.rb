notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
  defaults channel: "#general",
           username: "Rafael"
end