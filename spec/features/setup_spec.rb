feature "website" do
  feature "get '/'" do
    scenario 'has a form to enter a name' do
      visit('/')
      expect(page).to have_content("Player's name:")
    end
  end

  feature "get '/move'" do
    scenario 'has selection for RSP choice' do
      visit '/'
      fill_in 'name', with: 'Rae'
      click_button('Submit')
      expect(page).to have_content('Rae what is your move?')
    end
  end

  feature "get /result" do
    scenario 'output of who won' do
      visit '/'
      fill_in 'name', with: 'Rae'
      click_button('Submit')
      select("Rock", from: "move")
      click_button('Submit')
      expect(page).to have_content('Rae won with Rock')
    end
  end

end
