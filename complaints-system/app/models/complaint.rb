class Complaint < ApplicationRecord
  validate :has_four_paragraphs
  
  # To check that contents should have paragraphs less then 4
  def has_four_paragraphs
    unless((content.strip.split("\n") - ["\r"]).count < 4)
       self.errors.add(:content , "Content must contain between 1 and 4 paragraphs of text")
    end
  end
end
