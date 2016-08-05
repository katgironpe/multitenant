unless ENV['DB']
  User.create!(first_name: 'John', last_name: 'Doe', email: 'johndoe@somefakeemail.com', password: 'SecurePassword0025', password_confirmation: 'SecurePassword0025')
  user = User.first
  user.companies.create!(name: 'Thinkful', subdomain: 'thinkful')
end

## Company-specific seed for testing

# if ENV['DB'] == 'thinkful'
#  Post.create(title: 'This is a tenant post', body: 'Test body')
# end
