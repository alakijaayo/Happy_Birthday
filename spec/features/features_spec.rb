feature Birthday do
  describe 'request name' do
    visit ('/')
    fill_in 'name', with: 'Ayodele Alakija'
    expect(code).to have_content 'Ayodele Alakija'
  end
end
