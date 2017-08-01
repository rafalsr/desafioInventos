def notifier
  Slack::Notifier.new "https://hooks.slack.com/services/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" do
  defaults channel: "#canal-rafael-lima",
           username: "Rafael"
  end
end