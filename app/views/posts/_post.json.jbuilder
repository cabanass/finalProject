json.extract! post, :id, :author, :category, :headline, :byline, :leadParagraph, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
