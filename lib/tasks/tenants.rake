namespace :tenants do

  desc 'Create tenants based on company names'
  task create: :environment do
    # Create tenants based on companies
    Company.all.each do |company|
      name = company.name.downcase
      Apartment::Tenant.create(name)
      puts "Created #{name} tenant"
    end
  end
end
