
  RSpec.describe 'A visitor to our show page' do
    it 'sees a list of all comedian specials' do

      comedian_1 = Comedian.create(name: "Zeppo Marx", age: 76, city: "New York, NY")
      comedian_2 = Comedian.create(name: "Gummo Marx", age: 65, city: "Brooklyn, NY")
      special_1 = comedian_1.specials.create(title: "Zeppo Live!", length: 167, image:"https://images.findagrave.com/photos250/photos/2017/211/2760_1501548326.jpg")
      special_2 = comedian_2.specials.create(title: "Gummo Live!", length: 900, image:"https://www.tabakalera.eu/sites/default/files/styles/width800/public/actividades/2015/11/gummo.jpg?itok=EItLs-8L")

      visit '/comedians'
    
      expect(page).to have_content(special_1.title)
      expect(page).to have_content(special_1.length/60)
      expect(page).to have_content(special_2.title)
      expect(page).to have_content(special_2.length/60)


    end
  end
  #should user story 1-3 be tied together or have individual tests?
