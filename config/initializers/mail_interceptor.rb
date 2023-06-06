options = { forward_emails_to: ENV['TEST_EMAIL'] }

unless (Rails.env.test? || Rails.env.production?)
  interceptor = MailInterceptor::Interceptor.new(options)
  ActionMailer::Base.register_interceptor(interceptor)
end