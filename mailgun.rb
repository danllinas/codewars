require 'rest-client'

def send_simple_message
  RestClient.post "https://api:key-21dc6d05869c67000b106181f3ff9fe9"\
  "@api.mailgun.net/v3/sandbox80454131e90840c193988c27f01df32c.mailgun.org/messages",
  :from => "Mailgun Sandbox <postmaster@sandbox80454131e90840c193988c27f01df32c.mailgun.org>",
  :to => "Daniel Llinas <powercalcpak@gmail.com>",
  :subject => "Hello Daniel Llinas",
  :text => "Congratulations Daniel Llinas, you just sent an email with Mailgun!  You are truly awesome!  You can see a record of this email in your logs: https://mailgun.com/cp/log .  You can send up to 300 emails/day from this sandbox server.  Next, you should add your own domain so you can send 10,000 emails/month for free."
end

send_simple_message
