
  RSpec.describe 'A visitor on the comedians/new page' do
  it 'can add comedian data into database from form' do

      visit('/comedians/new')
      comedian_1 = Comedian.create(name:"George Carlin",age:68, city:"Orlando, FL")
      fill_in'comedian[name]', with:"#{comedian_1.name}"
      fill_in'comedian[age]', with: "#{comedian_1.age}"
      fill_in'comedian[city]', with: "#{comedian_1.city}"

      click_button"Submit"

      expect(current_path).to eq('/comedians')
      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_1.city)
    end
  end
