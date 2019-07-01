require 'test_helper'

class CardapiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardapio = cardapios(:one)
  end

  test "should get index" do
    get cardapios_url
    assert_response :success
  end

  test "should get new" do
    get new_cardapio_url
    assert_response :success
  end

  test "should create cardapio" do
    assert_difference('Cardapio.count') do
      post cardapios_url, params: { cardapio: { adicionais: @cardapio.adicionais, categoria: @cardapio.categoria, descricao: @cardapio.descricao, foto: @cardapio.foto, nome: @cardapio.nome, preco: @cardapio.preco, tempo_preparo: @cardapio.tempo_preparo } }
    end

    assert_redirected_to cardapio_url(Cardapio.last)
  end

  test "should show cardapio" do
    get cardapio_url(@cardapio)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardapio_url(@cardapio)
    assert_response :success
  end

  test "should update cardapio" do
    patch cardapio_url(@cardapio), params: { cardapio: { adicionais: @cardapio.adicionais, categoria: @cardapio.categoria, descricao: @cardapio.descricao, foto: @cardapio.foto, nome: @cardapio.nome, preco: @cardapio.preco, tempo_preparo: @cardapio.tempo_preparo } }
    assert_redirected_to cardapio_url(@cardapio)
  end

  test "should destroy cardapio" do
    assert_difference('Cardapio.count', -1) do
      delete cardapio_url(@cardapio)
    end

    assert_redirected_to cardapios_url
  end
end
