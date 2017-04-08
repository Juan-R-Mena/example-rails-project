require 'rails_helper'

RSpec.describe Complaint, type: :model do
  it { expect(Complaint.count).to eql(10) }
  it { expect(Complaint.where(user_email:"bpierce@muxo.edu").count).to eql(5) }
  it { expect(Complaint.where(user_email:"jtaylor@zazio.name").count).to eql(5) }
  # Should have content that is at most 3000 characters long.
  it { expect(Complaint.all.map {|c| c.content.length }).to include(be < 3000 ) }
end
