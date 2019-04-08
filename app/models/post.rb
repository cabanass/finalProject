class Post < ApplicationRecord
  validates :author, :headline, :byline, :leadParagraph, :body, presence: true
  enum category: [:Culture, :Economy, :People, :Science, :Society, :Sports, :Technology, :TV]
  belongs_to :author
end
