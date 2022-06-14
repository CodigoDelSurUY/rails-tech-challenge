require 'rails_helper'

RSpec.describe "favorites/new", type: :view do
  before(:each) do
    assign(:favorite, Favorite.new(
      author: Author.create!(name: 'John'),
      post: Post.create!(title: 'asd', content: 'asd', author: Author.create!(name: 'Steve'))
    ))
  end

  it "renders new favorite form" do
    render

    assert_select "form[action=?][method=?]", favorites_path, "post" do

      assert_select "input[name=?]", "favorite[author_id]"

      assert_select "input[name=?]", "favorite[post_id]"
    end
  end
end
