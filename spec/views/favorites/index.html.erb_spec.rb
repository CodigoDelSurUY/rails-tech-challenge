require 'rails_helper'

RSpec.describe "favorites/index", type: :view do
  before(:each) do
    assign(:favorites, [
      Favorite.create!(
        author: Author.create!(name: 'John'),
        post: Post.create!(title: 'asd', content: 'asd', author: Author.create!(name: 'Steve'))
      ),
      Favorite.create!(
        author: Author.create!(name: 'John'),
        post: Post.create!(title: 'asd', content: 'asd', author: Author.create!(name: 'Steve'))
      )
    ])
  end

  it "renders a list of favorites" do
    render
  end
end
