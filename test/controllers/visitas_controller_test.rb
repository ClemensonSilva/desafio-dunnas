require "test_helper"

class VisitasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visita = visitas(:one)
  end

  test "should get index" do
    get visitas_url
    assert_response :success
  end

  test "should get new" do
    get new_visita_url
    assert_response :success
  end

  test "should create visita" do
    assert_difference("Visita.count") do
      post visitas_url, params: { visita: { data: @visita.data, status: @visita.status, user_id: @visita.user_id, visitante_id: @visita.visitante_id } }
    end

    assert_redirected_to visita_url(Visita.last)
  end

  test "should show visita" do
    get visita_url(@visita)
    assert_response :success
  end

  test "should get edit" do
    get edit_visita_url(@visita)
    assert_response :success
  end

  test "should update visita" do
    patch visita_url(@visita), params: { visita: { data: @visita.data, status: @visita.status, user_id: @visita.user_id, visitante_id: @visita.visitante_id } }
    assert_redirected_to visita_url(@visita)
  end

  test "should destroy visita" do
    assert_difference("Visita.count", -1) do
      delete visita_url(@visita)
    end

    assert_redirected_to visitas_url
  end
end
