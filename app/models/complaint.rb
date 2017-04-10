class Complaint < ActiveRecord::Base

	validates :user_email, :content, presence: true
	validates_format_of :user_email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
