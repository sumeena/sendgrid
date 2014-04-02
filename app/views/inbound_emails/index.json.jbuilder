json.array!(@inbound_emails) do |inbound_email|
  json.extract! inbound_email, :id, :text, :html, :to, :from, :subject
  json.url inbound_email_url(inbound_email, format: :json)
end
