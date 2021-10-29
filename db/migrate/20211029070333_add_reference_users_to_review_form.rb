class AddReferenceUsersToReviewForm < ActiveRecord::Migration[6.1]
  def change
    add_reference :review_forms, :user, foreign_key: true
  end
end
