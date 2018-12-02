  RSpec.describe 'A visitor on the show page' do
    it 'sees the total count of comedians specials' do

      comedian_1 = Comedian.create(name: "Zeppo", age:44, city: "New York, NY" )
      comedian_2 = Comedian.create(name: "Gummo", age:55, city: "Brooklyn, NY")
      special_1 = comedian_1.specials.create(title: 'Z Live',length: 56, image:"http://thenewbev.com/wp-content/uploads/2018/01/Zeppo-Marx-poster-385x578.jpg")
      special_2 = comedian_1.specials.create(title: "Zepp Zpecial", length: 54, image:"http://thenewbev.com/wp-content/uploads/2018/01/Zeppo-Marx-poster-385x578.jpg")
      special_3 = comedian_1.specials.create(title: "Zeppo Marx-isms", length: 98, image:"http://thenewbev.com/wp-content/uploads/2018/01/Zeppo-Marx-poster-385x578.jpg")
      special_4 = comedian_2.specials.create(title: "Gummo Live", length:89, image:"https://www.tabakalera.eu/sites/default/files/styles/width800/public/actividades/2015/11/gummo.jpg?itok=EItLs-8L")

      visit('/comedians')

     expect(comedian_1.specials.total_count).to eq(3)
     expect(comedian_2.specials.total_count).to eq(1)
   end
 end
