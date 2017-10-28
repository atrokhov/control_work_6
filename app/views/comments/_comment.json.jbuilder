json.extract! comment, :id, :user_id, :score_id, :text, :created_at, :updated_at
json.url comment_url(comment, format: :json)
