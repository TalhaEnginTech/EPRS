class AddReferenceReviewFormToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :review_forms, foreign_key: true
  end
end
