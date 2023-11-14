require 'rails_helper'

RSpec.describe "Countries", type: :request do
  describe "GET /index" do
    it "gets a list of " do
      Country.create(
        name: "Spain", 
        prime_destiniation: "Sitges", 
        primary_language: "Spanish", 
        known_for: "The International Fantastic Film Festival is known to be the number one fantasy film festival in the world. Directors, and actors like Quentin Tarantino and Cameron Diaz have made appearences.",
        climate: "Mediterranean",
        nightlife: "4.5 stars",
        image: "https://images.unsplash.com/photo-1599484205751-0fc4e23e1cd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNwYWluJTIwYmVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60"
      )

      get '/countries'
      country = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(country.length).to eq 1
  end
end
