require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      title: "MyString",
      content: "MyText",
      author: Author.create!(name: 'John')
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "select[name=?]", "post[author_id]"
    end
  end
end
