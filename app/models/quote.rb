class Quote < ApplicationRecord
    belongs_to :philosopher
    belongs_to :user
    has_many :quote_categories, dependent: :destroy
    has_many :categories, through: :quote_categories
end
