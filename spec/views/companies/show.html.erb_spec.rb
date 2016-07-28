require 'rails_helper'

xdescribe "companies/show" do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :location => "Location",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
