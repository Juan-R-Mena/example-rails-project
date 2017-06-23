class Complaint < ActiveRecord::Base
  validates :user_email, :content, presence: true
  validates :user_email, email:true
end
