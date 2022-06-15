require 'rails_helper'

RSpec.describe "favorites/show", type: :view do
  before(:each) do
    @favorite = assign(:favorite, Favorite.create!(
      author: Author.create!(name: 'John'),
      post: Post.create!(title: 'asd', content: 'asd', author: Author.create!(name: 'Steve'))
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
