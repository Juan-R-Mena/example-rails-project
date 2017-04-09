json.extract! complaint, :id, :email_address, :content, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
