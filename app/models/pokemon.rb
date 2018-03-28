class Pokemon < ApplicationRecord
    include HTTParty
    base_uri 'http://pokeapi.co/api/v2/'

    def self.generate(api_id)
        pokemon = find_by api_id: api_id
        return pokemon unless pokemon.nil?

        response = get "/pokemon/#{api_id}"

        poke_image = get "/pokemon/#{api_id}"
        
        create!(name: response["name"],
                image: poke_image["sprites"]["front_default"],
                wins: 0,
                api_id: api_id)
    end
end
