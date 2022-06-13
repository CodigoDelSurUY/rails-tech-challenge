require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        content: "MyText",
        author: Author.create!(name: 'John')
      ),
      Post.create!(
        title: "Title",
        content: "MyText",
        author: Author.create!(name: 'John')
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 'Title', count: 2
  end
end
