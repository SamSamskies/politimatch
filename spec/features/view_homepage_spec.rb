require 'spec_helper'

feature 'view homepage' do
  scenario 'sees relavent information' do
    visit root_path

    expect(page).to have_title 'Politimatch'
    expect(page).to have_content 'Welcome to Politimatch SF!'
  end
end
