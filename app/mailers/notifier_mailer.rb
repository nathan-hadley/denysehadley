class NotifierMailer < ApplicationMailer
  default to: ENV['EMAIL'],
          from: 'contact@denysehadley.com'

  def simple_message(name, email, message)
    mail(
      "reply-to": email_address_with_name(email, name),
      subject: 'New contact form message',
      body: "#{name} sent you this message:\n\n'#{message}'\n\nReply to #{email}"
    )
  end
end
