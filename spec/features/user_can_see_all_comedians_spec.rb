RSpec.describe 'A visitor to our show page' do
  it 'can see a list of all comedians' do
    comedian_1 = Comedian.create(name: "Zeppo Marx", age: 76, city: "New York, NY")
    comedian_2 = Comedian.create(name: "Gummo Marx", age: 65, city: "Brooklyn, NY")

    visit '/comedians'

    within('div#comedians') do
      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_1.city)
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_2.age)
      expect(page).to have_content(comedian_2.city)
    end
  end
end
#should user story 1-3 be tied together or have individual tests?
