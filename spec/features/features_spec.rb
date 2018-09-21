feature Birthday do
  scenario 'wishes a person happy birthday' do
    sign_in_and_party
    expect(page).to have_content 'HAPPY BIRTHDAY Ayodele Alakija!!!'
  end

  scenario 'informs them time until their birthday' do
    sign_in_and_party
    expect(page).to have_content 'You have 1 day until your birthday! At least it will be fun when it gets here!'
  end
end
