class CharactersController < ApplicationController
  def index
    response = HTTParty.get('https://rickandmortyapi.com/api/character')
    characters_data = JSON.parse(response.body)

    characters_data.each do |character_data|
      Character.create(name: character_data["name"], species: character_data["species"])
    end


    @characters = Character.paginate(:page => page_number, :per_page => 10)
  end

end
