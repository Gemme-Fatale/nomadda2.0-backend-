user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

country1 = Country.create(name: 'Spain', prime_destination: 'Sitges', primary_language: 'Spanish', known_for: 'The International Fantastic Film Festival is known to be the number one fantasy film festival in the world. Directors, and actors like Quentin Tarantino and Cameron Diaz have made appearences.', climate: 'Mediterranean', nightlife: 4.5, image: 'https://images.unsplash.com/photo-1599484205751-0fc4e23e1cd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNwYWluJTIwYmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60')

country2 = Country.create(name: 'United States', prime_destination: 'Waikiki', primary_language: 'English', known_for: 'Beaches', climate: 'Tropical', nightlife: '3.5 stars', image: 'https://images.unsplash.com/photo-1545251142-f32339076e6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGF3YWlpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')

country3 = Country.create(name: 'Thailand', prime_destination: 'Phuket', primary_language: 'Thai', known_for: ' Its vibrant nightmarkets and lively nightlife', climate: 'Tropical', nightlife: 4.9, image: 'https://images.unsplash.com/photo-1611335584987-181d4b09ed33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60')

country4 = Country.create(name: 'Greece', prime_destination: 'Santorini', primary_language: 'Greek', known_for: 'Its delicious seafood, and breath-taking beaches. Greece is also know for being the birthplace of democracy.', climate: 'Mediterranean', nightlife: 4.7, image: 'https://images.unsplash.com/photo-1580502304784-8985b7eb7260?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGdyZWVjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60')

country5 = Country.create(name: 'Sweden', prime_destination: 'Stockholm', primary_language: 'Swedish', known_for: 'The famous Ice Hotel, the rich coffee and food culture, and the Northern Lights.', climate: 'Mild', nightlife: 3.3, image: 'https://images.unsplash.com/photo-1611600382820-b7d6214847c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHN0b2NraG9sbXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60')

country6 = Country.create(name: 'Australia', prime_destination: 'Sydney', primary_language: 'English', known_for: 'The Great Barrier Reef, the iconic Steve Erwin, and its fantastic beer and wine.', climate: 'desert/tropical', nightlife: 4.1, image: 'https://images.unsplash.com/photo-1543183501-7df0144a6753?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGF1c3RyYWxpYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60' )

country7 = Country.create(name: 'Taiwan', prime_destination: 'Taipei', primary_language: 'Mandarin',
known_for: 'The Shilin Night Market, delectable street food, and the Pingxi Sky Lantern Festival.', climate: 'Tropical', nightlife: 4.4, image: 'https://images.unsplash.com/photo-1583889659384-64d9df2347ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHRhaXdhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60')

destination1 = [
  {
    location: 'Sitges', main_attraction: 'International Fantastic Film Festival', start_date: '2023-01-01', end_date: '2023-01-02' , travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1643197583269-ac6e004b4c6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80', country: 'Spain'
  }, 
  {
    location: 'Barcelona', main_attraction: 'La Sagrada Familia', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1589708532758-ddd0753b0f2f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60', country: 'Spain'
  }
  
]


destination2 = [
  {
    location: 'Waikiki', main_attraction: 'beauitful beaches', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1651546707628-46ae1a1bc765?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', country: 'United States'  
  },
  {
    location: 'San Diego', main_attraction: 'Balboa Park', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1593970107436-6b5c6f8f1138?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2FuJTIwZGllZ298ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60', country: 'United States'
  },
  {
    location: 'Miami', main_attraction: 'South Beach', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1562517634-baa2da3acfbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1pYW1pfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60', country: 'United States'
  }
]

destination3 = [
  {
    location: 'Phuket', main_attraction: 'Beaches, and night markets', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', country: 'Thailand'
  },
  {
    location: 'Bangkok', main_attraction: 'Grand Palace and Wat Prakeaw', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1508009603885-50cf7c579365?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', country: 'Thailand'
  },
  {
    location: 'Chiang Mai', main_attraction: 'The beautiful ancient temples', start_date: '2023-01-01', end_date: '2023-01-02', travelers: 0, trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1615094401770-713fecd4695a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80', country: 'Thailand'
  }

]

destination4 = [
  {
    location: 'Santorini', main_attraction: 'The villages of Fir and Oia', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1504842432719-285ff2817c25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NXwzODQ4ODAxfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60', country: 'Greece'
  },
  {
    location: 'Mykonos', main_attraction: 'The Little Venice Quarter, and Elia Beach ', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1471085507142-12355181f804?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fG15a29ub3MlMjBncmVlY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60', country: 'Greece'
  },
  {
    location: 'Athens', main_attraction: 'The Acropolis of Athens, and The Olympian Zeus', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1559751023-89510c95ae2f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGF0aGVuc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60', country: 'Greece'
  }
]

destination5 = [
  {
    location: 'Stockholm', main_attraction: 'Gamla Stan (Old town)', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1600290601473-3b73e4c531c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', country: 'Sweden'
  },
  {
    location: 'Gothenburg', main_attraction: 'The Gothenburg Museum of Art ', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1600798065533-aea283409f83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODl8fGdvdGhlbmJ1cmd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60', country: 'Sweden'
  }
]

destination6 = [
  {
    location: 'Sydney', main_attraction: 'The iconic Sydney Opera House and Bondi Beach', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1503022651232-aa1b2a1503a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80', country: 'Australia'
  },
  {
    location: 'Melbourne', main_attraction: 'The Royal Botanic Gardens Victoria', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1538455452290-111d18b8fee1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1773&q=80', country: 'Australia'
  }
]

destination7 = [
  {
    location: 'Taipei', main_attraction: 'The Raohe Night Market', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1552993873-0dd1110e025f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dGFpcGVpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60', country: 'Taiwan'
  },
  {
    location: 'Kenting National Park', main_attraction: 'The Kending Street Night Market and White Sand Bay', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 0 , trip_details: 'n/a', family_friendly: true, image: 'https://images.unsplash.com/photo-1651633972973-f131ed0571e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2VudGluZyUyMG5hdGlvbmFsJTIwcGFya3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60', country: 'Taiwan'
  }
]

destination8 = [
  {
    location: 'Phuket', main_attraction: 'Beaches, and night markets', start_date: '2022-12-20', end_date: '2022-12-27', travelers: 8, trip_details: 'We are going to lounge on the beaches sipping mimosas by day and by night we are going to vist the street markets and club-hop', family_friendly: true, image: 'https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', country: 'Thailand'
  }
]

destination9 = [
  {
   location: 'Waikiki', main_attraction: 'beauitful beaches', start_date: '2023-06-14', end_date: '2023-06-19', travelers: 3, trip_details: 'We are going to hike some trails, take surf lessons, and eat good food.', family_friendly: true, image: 'https://images.unsplash.com/photo-1651546707628-46ae1a1bc765?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', country: 'United States'
  }
]

destination1.each do |attributes|
  country1.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination2.each do |attributes|
  country2.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination3.each do |attributes|
  country3.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination4.each do |attributes|
  country4.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination5.each do |attributes|
  country5.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination6.each do |attributes|
  country6.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination7.each do |attributes|
  country7.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination8.each do |attributes|
  user1.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end

destination9.each do |attributes|
  user2.destinations.create(attributes)
  p "each destinations attributes #{attributes}"
end