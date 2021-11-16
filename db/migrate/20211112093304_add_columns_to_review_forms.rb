class AddColumnsToReviewForms < ActiveRecord::Migration[6.1]
  def change
    add_column :review_forms, :quality, :integer
    add_column :review_forms, :productivity, :integer
    add_column :review_forms, :job_knowledge, :integer
    add_column :review_forms, :commitment, :integer
    add_column :review_forms, :attendance, :integer
    add_column :review_forms, :creativity, :integer
    add_column :review_forms, :policy, :integer
    add_column :review_forms, :lead, :integer
    add_column :review_forms, :accomplishments, :integer
    add_column :review_forms, :areas, :integer
    add_column :review_forms, :recommendations, :integer
    add_column :review_forms, :score, :integer

  end
end
