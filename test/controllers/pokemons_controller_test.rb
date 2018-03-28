require 'test_helper'

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get pokemons_update_url
    assert_response :success
  end

end
