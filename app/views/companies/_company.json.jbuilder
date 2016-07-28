json.extract! company, :id, :name, :location, :body, :created_at, :updated_at
json.url company_url(company, format: :json)