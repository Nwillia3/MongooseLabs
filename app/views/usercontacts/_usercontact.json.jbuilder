json.extract! usercontact, :id, :name, :email, :login, :created_at, :updated_at
json.url usercontact_url(usercontact, format: :json)