require 'rails_helper'

xdescribe "posts/index" do

  let(:posts) { ['Title 1', 'New Post'].each { |title| create(:post, title: title) } }

  before(:each) do
    assign(:posts, posts)
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Title 1", count: 2
    assert_select "tr>td", text: "New Post", count: 2
  end
end
