class ApplicationMailer < ActionMailer::Base
  	# change stuff@example.com to a email i have
  default from: 'stuff@example.com'
  layout 'mailer'
end
