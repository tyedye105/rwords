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

  describe("path to add a word to the dictionary", {:type => :feature}) do
    it ("let the user add a word to the dictionary") do
      visit('/')
      click_link("add a word")
      fill_in('word_entry', :with => 'box')
      click_button('add it!')
      expect(page).to have_content('box')
    end
  end

  describe("if the user mixes numbers into the word", {:type => :feature}) do
    it ("page will redirect back to the current page") do
      visit('/')
      click_link("add a word")
      fill_in('word_entry', :with => '2box4')
      click_button('add it!')
      expect(page).to have_content("")
    end
  end

  describe("if the user submits nothing", {:type => :feature}) do
    it ("page will redirect back to the current page") do
      visit('/')
      click_link("add a word")
      fill_in('word_entry', :with => '``')
      click_button('add it!')
      expect(page).to have_content("")
    end
  end

  describe("path to view the definion(s) of selected word", {:type => :feature}) do
    it ("let the user view the definitons of the word they clicked on") do
      visit('/')
      click_link("add a word")
      fill_in('word_entry', :with => 'boxer')
      click_button('add it!')
      click_link("boxer")
      expect(page).to have_content('boxer')
    end
end

    describe("path to add a definition to selected word", {:type => :feature}) do
      it ("let the user view the definitons of the word they clicked on") do
        visit('/')
        click_link("add a word")
        fill_in('word_entry', :with => 'fox')
        click_button('add it!')
        click_link("fox")
        fill_in('definition', :with => "an animal")
        click_button('add definition')
        expect(page).to have_content("an animal")
      end
    end

    describe("path to everthing", {:type => :feature}) do
      it ("let the user view the all words and thier corresponding definitons at once") do
        visit('/')
        click_link("add a word")
        fill_in('word_entry', :with => 'worlf')
        click_button('add it!')
        click_link("fox")
        fill_in('definition', :with => "an animal with four legs")
        click_button('add definition')
        click_link('home')
        click_link('Everything?')
        expect(page).to have_content("an animal with four legs")
      end
    end
