class ReviewForm < ApplicationRecord

=begin
  before_save :calculate_score
  def calculate_score
    result = quality + productivity + job_knowledge + commitment + attendance + creativity + policy + lead + accomplishments + areas + recommendations
    self.assign_attributes(score: result)
  end
=end
  belongs_to :user

end
