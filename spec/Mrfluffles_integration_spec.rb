require ('rspec')
require ('capybara/rspec')
require ('pry')
require ('./app')
require ('capybara')
require ('./lib/Mrfluffles')

describe('Mrfluffles the Cat', {:type => :feature}) do
  it('checks whether user interacted with his cat') do
    visit('/')
    fill_in('user_answer', :with => 'Mr. Fluffles')
    click_button('Submit answer')
    expect(page).to have_content('Nope, wrong, you suck!')
  end
end
