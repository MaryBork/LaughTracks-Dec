
  RSpec.describe 'A visitor to the show page' do
    it 'sees statistics about comedians and specials' do

      comedian_1 = Comedian.create(name:"Zeppo Marx" , age:75 , city: "New York, NY")
      comedian_2 = Comedian.create(name:"Gummo Marx", age: 67, city: "Brooklyn, NY")
      comedian_3 = Comedian.create(name:"Karl Marx", age: 35, city: "Brooklyn, NY")
      special_1 = comedian_1.specials.create(title: "Zeppo Live", length: 44, image:"http://thenewbev.com/wp-content/uploads/2018/01/Zeppo-Marx-poster-385x578.jpg" )
      special_2 = comedian_2.specials.create(title: "Gummo Live", length: 55, image:"https://www.biography.com/.image/ar_8:10%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTE4MDAzNDEwOTQyMDY4MjM4/marx-brothers.jpg" )
      special_3 = comedian_3.specials.create(title: "The Death of Karl Marx", length: 66, image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxWV9370JYE5qF-NxtNaEXnkQmZNRswIFIDHDBFdjKFfTA_BMUNg")

      visit '/comedians'
    
      within('div#stats'){expect(Comedian.average_age).to eq(59)}
      within('div#stats'){expect(Special.average_length).to eq(55)}
      within('div#stats'){expect(Comedian.unique_cities).to eq(["New York, NY", "Brooklyn, NY"])}

    end
  end
