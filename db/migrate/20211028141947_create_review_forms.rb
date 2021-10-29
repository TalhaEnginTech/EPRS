class CreateReviewForms < ActiveRecord::Migration[6.1]
  def change
    create_table :review_forms do |t|
      t.text :remarks
      t.string :submittedBy
      t.timestamps
    end
  end
end
