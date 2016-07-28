namespace :tenants do

  desc 'Create tenants based on company names'
  task create: :environment do
    # Create tenants based on companies
    Company.all.each do |company|
      Apartment::Tenant.create(company.subdomain)
      puts "Created #{company.subdomain} tenant"
    end
  end
end
