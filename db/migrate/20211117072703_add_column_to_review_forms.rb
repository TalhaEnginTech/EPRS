class AddColumnToReviewForms < ActiveRecord::Migration[6.1]
  def change
    add_column :review_forms, :answer, :string
  end
end
