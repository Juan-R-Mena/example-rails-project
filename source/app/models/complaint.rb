# == Schema Information
#
# Table name: complaints
#
#  id         :integer          not null, primary key
#  user_email :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Complaint < ActiveRecord::Base
  validates :user_email, :content, presence: true
  validates :user_email, email: true
end
