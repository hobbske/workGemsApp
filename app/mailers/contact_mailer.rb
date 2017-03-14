class ContactMailer < ActionMailer::Base
	default to: 'kevin.w.hobbs@gmail.com'

	def contact_email(name, email, body)
		@name 	= name
		@email 	= email
		@body 	= body

		mail(from: email, subject: 'WorkGems - Contact Form Message ')
	end


end