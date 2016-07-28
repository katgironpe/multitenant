require 'rails_helper'

xdescribe "companies/new" do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :location => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_location[name=?]", "company[location]"

      assert_select "textarea#company_body[name=?]", "company[body]"
    end
  end
end
