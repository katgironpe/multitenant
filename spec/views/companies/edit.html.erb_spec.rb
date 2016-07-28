require 'rails_helper'

xdescribe "companies/edit" do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :location => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_location[name=?]", "company[location]"

      assert_select "textarea#company_body[name=?]", "company[body]"
    end
  end
end
