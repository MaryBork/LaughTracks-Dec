
  RSpec.describe 'A visitor on the show page' do
    it 'can query comedians by age' do

      comedian_1 = Comedian.create(name: "Zeppo", age:88, city: "New York, NY")
      comedian_2 = Comedian.create(name: "Gummo", age:34, city: "Brooklyn, NY")
      special_1 = comedian_1.specials.create(title: "Zeppo Live", length: 45, image: "https://images.findagrave.com/photos250/photos/2017/211/2760_1501548326.jpg")
      special_2 = comedian_2.specials.create(title: "Gummo Live", length: 67, image:"https://www.tabakalera.eu/sites/default/files/styles/width800/public/actividades/2015/11/gummo.jpg?itok=EItLs-8L")

      visit('/comedians?age=34')

      expect(page).to have_content(comedian_2.name)
      expect(page).to_not have_content(comedian_1.name)
    end
  end
