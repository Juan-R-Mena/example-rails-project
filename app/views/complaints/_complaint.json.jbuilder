json.extract! complaint, :id, :user_email, :content, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
