class Question < ApplicationRecord
    belongs_to :review_form, optional: true
end
