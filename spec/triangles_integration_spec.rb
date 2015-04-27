require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('user will enter three sides of a triangle into the boxes provided', {:type => :feature}) do
  it('takes the three sides and inputs it on the type form on the next page') do
    visit('/')
    fill_in('side1', with: '2')
    fill_in('side2', with: '2')
    fill_in('side3', with: '2')
    click_button('Send')
    expect(page).to have_content("This is an equilateral triangle")
  end
end
