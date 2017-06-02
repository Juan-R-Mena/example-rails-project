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
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:user_email) }

    describe 'advance email validations' do
      subject { build(:complaint) }

      it { is_expected.to allow_value('some@mail.com').for(:user_email) }
      it { is_expected.not_to allow_value('no-email').for(:user_email) }
    end
  end
end
