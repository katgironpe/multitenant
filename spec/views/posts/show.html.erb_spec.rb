require 'rails_helper'

xdescribe "posts/show" do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
