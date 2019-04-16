class Post < ApplicationRecord
  validates :author, :headline, :byline, :leadParagraph, :body, presence: true
  belongs_to :author
end
