json.extract! picture, :id, :title, :user_id, :comment_id, :score_id, :created_at, :updated_at
json.url picture_url(picture, format: :json)
