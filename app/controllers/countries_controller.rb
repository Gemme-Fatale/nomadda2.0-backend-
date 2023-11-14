class CountriesController < ApplicationController

index
  countries = Country.all
  render json: countries
end

end
