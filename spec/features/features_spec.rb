feature Birthday do
  scenario 'wishes a person happy birthday' do
    sign_in_and_party
    expect(page).to have_content 'HAPPY BIRTHDAY Ayodele Alakija!!!'
  end
end
