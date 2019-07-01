require "application_system_test_case"

class CardapiosTest < ApplicationSystemTestCase
  setup do
    @cardapio = cardapios(:one)
  end

  test "visiting the index" do
    visit cardapios_url
    assert_selector "h1", text: "Cardapios"
  end

  test "creating a Cardapio" do
    visit cardapios_url
    click_on "New Cardapio"

    fill_in "Adicionais", with: @cardapio.adicionais
    fill_in "Categoria", with: @cardapio.categoria
    fill_in "Descricao", with: @cardapio.descricao
    fill_in "Foto", with: @cardapio.foto
    fill_in "Nome", with: @cardapio.nome
    fill_in "Preco", with: @cardapio.preco
    fill_in "Tempo preparo", with: @cardapio.tempo_preparo
    click_on "Create Cardapio"

    assert_text "Cardapio was successfully created"
    click_on "Back"
  end

  test "updating a Cardapio" do
    visit cardapios_url
    click_on "Edit", match: :first

    fill_in "Adicionais", with: @cardapio.adicionais
    fill_in "Categoria", with: @cardapio.categoria
    fill_in "Descricao", with: @cardapio.descricao
    fill_in "Foto", with: @cardapio.foto
    fill_in "Nome", with: @cardapio.nome
    fill_in "Preco", with: @cardapio.preco
    fill_in "Tempo preparo", with: @cardapio.tempo_preparo
    click_on "Update Cardapio"

    assert_text "Cardapio was successfully updated"
    click_on "Back"
  end

  test "destroying a Cardapio" do
    visit cardapios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cardapio was successfully destroyed"
  end
end
