require 'rails_helper'

xdescribe "companies/index" do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :location => "Location",
        :body => "MyText"
      ),
      Company.create!(
        :name => "Name",
        :location => "Location",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
