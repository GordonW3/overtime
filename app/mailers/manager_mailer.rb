class ManagerMailer < ApplicationMailer
	def email manager
		@manager = manager
		mail(to: manager.email, subject: 'daily overtime request email')
	end
end
