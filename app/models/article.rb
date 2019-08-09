class Article < ApplicationRecord
  validates :title, presence: true
  has_rich_text :text
end
