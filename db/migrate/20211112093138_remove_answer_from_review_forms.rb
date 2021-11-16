class RemoveAnswerFromReviewForms < ActiveRecord::Migration[6.1]
  def change
    remove_column :review_forms, :answer, :text
  end
end
