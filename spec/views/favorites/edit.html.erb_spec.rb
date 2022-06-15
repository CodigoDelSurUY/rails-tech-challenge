require 'rails_helper'

RSpec.describe "favorites/edit", type: :view do
  before(:each) do
    @favorite = assign(:favorite, Favorite.create!(
      author: Author.create!(name: 'John'),
      post: Post.create!(title: 'asd', content: 'asd', author: Author.create!(name: 'Steve'))
    ))
  end

  it "renders the edit favorite form" do
    render

    assert_select "form[action=?][method=?]", favorite_path(@favorite), "post" do

      assert_select "input[name=?]", "favorite[author_id]"

      assert_select "input[name=?]", "favorite[post_id]"
    end
  end
end
