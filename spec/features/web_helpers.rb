def sign_in_and_party
  visit ('/')
  fill_in 'name', with: 'Ayodele Alakija'
  find("option[value='13']").click
  select 'January', from: 'month'
  click_button 'Submit'
end
