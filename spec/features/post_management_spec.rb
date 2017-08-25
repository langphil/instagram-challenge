require 'rails_helper'

RSpec.feature "Post an image", type: :feature do
  scenario "User can post an image" do
    sign_up
    visit 'posts/new'
    attach_file('post_image', Rails.root + 'spec/assets/test.png', visible: false)
    fill_in 'post_caption', with: 'Caption'
    click_button 'Upload'
    expect(Post.count).to eq 1
    expect(page).to have_content('Caption')
  end
end
