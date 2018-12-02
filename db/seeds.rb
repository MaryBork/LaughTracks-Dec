
require_relative '../app/models/comedian'
require_relative '../app/models/special'

  comedians = [
  {name: "Zeppo Marx", age: 78, city: "Manhattan, New York"},
  {name: "Chico Marx", age: 74, city: "Manhattan, New York"},
  {name: "Groucho Marx", age: 86, city: "New York, New York"},
  {name: "Gummo Marx", age: 83, city: "Manhattan, New York"},
  {name: "Kristen Schaal", age: 40, city: "Longmont, Colorado"},
  {name: "Henry Rollins", age: 57, city: "Washington, D.C."}
    ]

  specials =[
    {title:"Duck Soup" , length: 68  ,image: "https://images-na.ssl-images-amazon.com/images/I/51AGN6HMVXL.jpg"  ,comedian_id: 1},
    {title:"Horse Feathers" , length: 68  ,image: "https://images-na.ssl-images-amazon.com/images/I/51J4soto5pL.jpg" ,comedian_id: 1},
    {title:"Monkey Business" , length: 77  ,image: "https://images-na.ssl-images-amazon.com/images/I/516W480ZNYL.jpg" ,comedian_id: 1},
    {title:"Love Happy" , length: 85  ,image: "https://images-na.ssl-images-amazon.com/images/I/61spOvi9dxL.jpg" ,comedian_id: 2},
    {title:"A Night In Casablanca" , length: 85  ,image:"https://images-na.ssl-images-amazon.com/images/I/51SXJAWT23L.jpg"  ,comedian_id: 2},
    {title:"Go West" , length: 85  ,image:"https://images-na.ssl-images-amazon.com/images/I/81w2nATCMjL._RI_SX300_.jpg",comedian_id: 2},
    {title:"At the Circus" , length: 87  ,image:"https://images-na.ssl-images-amazon.com/images/I/81-8imxc8HL._RI_SX300_.jpg"  ,comedian_id: 3},
    {title:"Mr. Music" , length: 110  ,image:"https://images-na.ssl-images-amazon.com/images/I/61X7XrBKu1L._RI_SX300_.jpg"  ,comedian_id: 3},
    {title:"Double Dynamite" , length: 80  ,image:"https://images-na.ssl-images-amazon.com/images/I/91JMKq-s7qL._RI_SX300_.jpg"  ,comedian_id: 3},
    {title:"Tonight!" , length: 105 ,image: "https://m.media-amazon.com/images/M/MV5BZmQ4MzIwODAtZWRjOC00YTA0LWEyMzUtYzJiNjhmZDRhMTIxXkEyXkFqcGdeQXVyMjE5MzM3MjA@._V1_UY268_CR9,0,182,268_AL_.jpg" ,comedian_id: 4},
    {title:"Tonight! America After Dark" , length: 105 ,image: "https://c1.staticflickr.com/3/2891/32722695200_dcd002fff5_b.jpg" , comedian_id: 4},
    {title:"Kristen Schaal: Live at the Fillmore" , length: 60  ,image: "https://m.media-amazon.com/images/M/MV5BMTc1ODI1NjI4Nl5BMl5BanBnXkFtZTgwNTY5NzA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg" ,comedian_id: 5},
    {title: "Kristen Schaal: Funny as Hell" , length: 160  ,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGq5zo2R6lE7RxND-OwIxM26NLeoxZYXDBspWvS_Eeyw6lTZqu9A"  ,comedian_id: 5},
    {title: "Henry Rollins: Keep Talking Pal" , length: 58  ,image:"https://m.media-amazon.com/images/M/MV5BOGFiMWZiZmYtZjhjOC00ZjJlLTk2YzQtZTM3NDcwMWIyNzA1XkEyXkFqcGdeQXVyOTExNjA2ODg@._V1_UX182_CR0,0,182,268_AL_.jpg"  ,comedian_id: 6},
    {title: "This Is Not Happening" , length: 230 ,image: "https://i.ytimg.com/vi/5vhaQIp5PBs/maxresdefault.jpg" ,comedian_id: 6}

  ]

  comedians.each do |c|
    Comedian.create(c)
  end

  specials.each do |s|
    Special.create(s)
  end
