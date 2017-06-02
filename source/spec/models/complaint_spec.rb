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

require 'rails_helper'

RSpec.describe Complaint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
