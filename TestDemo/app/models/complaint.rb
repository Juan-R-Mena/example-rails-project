class Complaint < ApplicationRecord
  validates :email_address,
              :format => {
              :with    => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/,
              :message => "Please enter valied email" },
              presence: true,
              :length => {:maximum => 254}
end
