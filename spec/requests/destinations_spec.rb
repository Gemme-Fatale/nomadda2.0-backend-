require 'rails_helper'

RSpec.describe "Destinations", type: :request do
    let(:user) {User.create(
    email: "test@example.com",
    password: "password",
    password_confirmation: "password"
  )}
  describe "GET /index" do
    it "gets a list of destinations" do
      destination = user.destinations.create(
        location: "Waikiki",
        main_attraction: "beauitful beaches",
        start_date: "2024-01-01",
        end_date: "2024-01-02",
        travelers: 1,
        trip_details: "have an awesome time",
        family_friendly: true,
        image: "https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        visitable_id: user.id,
        visitable_type: "User",
        country: "Country"
      )
      get '/destinations'
      destination = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(destination.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a new user destination" do
      destination_params = {
        destination: {
          location: "Waikiki",
          main_attraction: "beautiful beaches",
          start_date: "2024-01-01",
          end_date: "2024-01-02",
          travelers: 1,
          trip_details: "have an awesome time",
          family_friendly: true,
          image: "https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          visitable_id: user.id,
          visitable_type: "User",
          country: "Country"
        }
      }
      
      post '/destinations', params: destination_params

      expect(response).to have_http_status(200)
      destination = Destination.first
      expect(destination.location).to eq "Waikiki" 
      expect(destination.main_attraction).to eq "beautiful beaches" 
      expect(destination.start_date).to eq Date.new(2024, 01, 01) 
      expect(destination.end_date).to eq Date.new(2024, 01, 02)
      expect(destination.travelers).to eq 1
      expect(destination.trip_details).to eq "have an awesome time" 
      expect(destination.family_friendly).to eq true
      expect(destination.image).to eq "https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
      expect(destination.country).to eq "Country"
    end
  end

  describe "PATCH /update" do
    it "updates a trip" do
      destination_params = {
        destination: {
          location: "Waikiki",
          main_attraction: "beautiful beaches",
          start_date: "2024-01-01",
          end_date: "2024-01-02",
          travelers: 1,
          trip_details: "have an awesome time",
          family_friendly: true,
          image: "https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          visitable_id: user.id,
          visitable_type: "User",
          country: "Country"
        }
      }
      post '/destinations', params: destination_params
      destination = Destination.first

      updated_destination_params = {
        destination: {
          location: "Waikiki",
          main_attraction: "beautiful beaches",
          start_date: "2024-01-01",
          end_date: "2024-01-02",
          travelers: 1,
          trip_details: "have an awesome time",
          family_friendly: false,
          image: "https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          visitable_id: user.id,
          visitable_type: "User",
          country: "Country"
        }
      }

      patch "/destinations/#{destination.id}", params: updated_destination_params
      updated_destination = Destination.find(destination.id)
      expect(response).to have_http_status(200)
      expect(updated_destination.family_friendly).to eq false
    end
  end

  describe "DELETE /destroy" do
    it "deletes a trip" do
      destination_params = {
        destination: {
          location: "Waikiki",
          main_attraction: "beautiful beaches",
          start_date: "2024-01-01",
          end_date: "2024-01-02",
          travelers: 1,
          trip_details: "have an awesome time",
          family_friendly: true,
          image: "https://images.unsplash.com/photo-1589394815804-964ed0be2eb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLWxpa2VkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
          visitable_id: user.id,
          visitable_type: "User",
          country: "Country"
        }
      }
      post '/destinations', params: destination_params
      destination = Destination.first
      delete "/destinations/#{destination.id}"
      expect(response).to have_http_status(200)
      destinations = Destination.all
      expect(destinations).to be_empty
    end
  end
end
