require "application_system_test_case"

class VisitasTest < ApplicationSystemTestCase
  setup do
    @visita = visitas(:one)
  end

  test "visiting the index" do
    visit visitas_url
    assert_selector "h1", text: "Visitas"
  end

  test "should create visita" do
    visit visitas_url
    click_on "New visita"

    fill_in "Data", with: @visita.data
    fill_in "Status", with: @visita.status
    fill_in "User", with: @visita.user_id
    fill_in "Visitante", with: @visita.visitante_id
    click_on "Create Visita"

    assert_text "Visita was successfully created"
    click_on "Back"
  end

  test "should update Visita" do
    visit visita_url(@visita)
    click_on "Edit this visita", match: :first

    fill_in "Data", with: @visita.data
    fill_in "Status", with: @visita.status
    fill_in "User", with: @visita.user_id
    fill_in "Visitante", with: @visita.visitante_id
    click_on "Update Visita"

    assert_text "Visita was successfully updated"
    click_on "Back"
  end

  test "should destroy Visita" do
    visit visita_url(@visita)
    click_on "Destroy this visita", match: :first

    assert_text "Visita was successfully destroyed"
  end
end
