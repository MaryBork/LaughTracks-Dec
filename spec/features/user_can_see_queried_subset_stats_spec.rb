
  RSpec.describe 'A visitor on a query search page' do
    it 'can see a subset of statistics associated with the query results' do
      comedian_1 = Comedian.create(name:"Zeppo Marx", age:34, city:"Brooklyn, NY" )
      comedian_2 = Comedian.create(name:"Gummo Marx" , age:34 , city: "New York, NY" )
      comedian_3 = Comedian.create(name:"Karl Marx" , age:34 , city: "New York, NY" )
      comedian_4 = Comedian.create(name:"Chico Marx" , age:89 , city:"Detroit, MI" )

      special_1 = comedian_1.specials.create(title: "Z Live" , length: 77, image:"http://thenewbev.com/wp-content/uploads/2018/01/Zeppo-Marx-poster-385x578.jpg" )
      special_2 = comedian_1.specials.create(title: "Zepp Zpecial" , length: 89 , image:"https://images.findagrave.com/photos250/photos/2017/211/2760_1501548326.jpg")
      special_3 = comedian_2.specials.create(title: "Gummo Gummo" , length: 55, image:"https://www.tabakalera.eu/sites/default/files/styles/width800/public/actividades/2015/11/gummo.jpg?itok=EItLs-8L")
      special_4 = comedian_3.specials.create(title: "Karl Special", length:68, image:"http://www.historyguide.org/images/marx-bio.jpg" )
      special_5 = comedian_4.specials.create(title: "Chico Special", length:67, image:"https://i.pinimg.com/originals/a8/c4/1e/a8c41ed362284c90d8f643215604c307.jpg" )

      visit('/comedians?age=34')

      within('div#stats'){expect(Comedian.average_age.to_i.round()).to eq(47)}
      within('div#stats'){expect(Special.average_length.to_i).to eq(71)}
      within('div#stats'){expect(Comedian.unique_cities).to eq(["Brooklyn, NY", "New York, NY", "Detroit, MI"])}

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_3.name)
      expect(page).not_to have_content(comedian_4.name)

    end
  end
