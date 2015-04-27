require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
require('pry')

describe('triangle path', {:type => :feature}) do
  it('User inputs 3 sides redirects to the next page to see the value') do
    visit('/')
    fill_in('side1', :with => 2)
    fill_in('side2', :with => 2)
    fill_in('side3', :with => 2)
    click_button('Send')
    expect(page).to have_content('equilateral')
  end
end
