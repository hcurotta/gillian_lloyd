class RequestMailer < ActionMailer::Base
  default from: "requests@no-reply.example.com"

  def callback_request(phone)
    mail(:to => "hcurotta@gmail.com", :subject => "Website Phone Request: #{phone}")
  end
end