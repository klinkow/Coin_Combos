require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combos path', {:type => :feature}) do
  it('process user input and returns the minimum number of each coin necessary to make change') do
    visit('/')
    fill_in('cents_input', :with=> '93')
    click_button('Make Change')
    expect(page).to have_content("3 quarters")
    expect(page).to have_content("1 dimes")
    expect(page).to have_content("1 nickels")
    expect(page).to have_content("3 pennies")
  end
end
