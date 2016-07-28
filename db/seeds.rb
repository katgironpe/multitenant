User.create(first_name: 'John', last_name: 'Doe', email: 'johndoe@somefakeemail.com', password: 'SecurePassword0025', password_confirmation: 'SecurePassword0025')
user = User.first
user.companies.create(name: 'Thinkful')
