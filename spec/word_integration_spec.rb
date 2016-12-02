require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("path to add word form", {:type => :feature}) do
  it ('take user to the add word form') do
    visit('/')
    click_link("add a word")
    expect(page).to have_content("Enter a word:")
  end
end
