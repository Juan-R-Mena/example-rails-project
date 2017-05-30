class Complaint < ActiveRecord::Base
  validates :email, :content, presence: true
end
