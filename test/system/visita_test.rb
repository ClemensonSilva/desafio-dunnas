require "application_system_test_case"

class VisitaTest < ApplicationSystemTestCase
  setup do
    @visitum = visita(:one)
  end

  test "visiting the index" do
    visit visita_url
    assert_selector "h1", text: "Visita"
  end

  test "should create visitum" do
    visit visita_url
    click_on "New visitum"

    fill_in "Data", with: @visitum.data
    fill_in "Funcionario", with: @visitum.funcionario_id
    fill_in "Setor", with: @visitum.setor_id
    fill_in "Status", with: @visitum.status
    fill_in "Visitante", with: @visitum.visitante_id
    click_on "Create Visitum"

    assert_text "Visitum was successfully created"
    click_on "Back"
  end

  test "should update Visitum" do
    visit visitum_url(@visitum)
    click_on "Edit this visitum", match: :first

    fill_in "Data", with: @visitum.data.to_s
    fill_in "Funcionario", with: @visitum.funcionario_id
    fill_in "Setor", with: @visitum.setor_id
    fill_in "Status", with: @visitum.status
    fill_in "Visitante", with: @visitum.visitante_id
    click_on "Update Visitum"

    assert_text "Visitum was successfully updated"
    click_on "Back"
  end

  test "should destroy Visitum" do
    visit visitum_url(@visitum)
    click_on "Destroy this visitum", match: :first

    assert_text "Visitum was successfully destroyed"
  end
end
