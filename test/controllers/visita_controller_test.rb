require "test_helper"

class VisitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitum = visita(:one)
  end

  test "should get index" do
    get visita_url
    assert_response :success
  end

  test "should get new" do
    get new_visitum_url
    assert_response :success
  end

  test "should create visitum" do
    assert_difference("Visitum.count") do
      post visita_url, params: { visitum: { data: @visitum.data, funcionario_id: @visitum.funcionario_id, setor_id: @visitum.setor_id, status: @visitum.status, visitante_id: @visitum.visitante_id } }
    end

    assert_redirected_to visitum_url(Visitum.last)
  end

  test "should show visitum" do
    get visitum_url(@visitum)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitum_url(@visitum)
    assert_response :success
  end

  test "should update visitum" do
    patch visitum_url(@visitum), params: { visitum: { data: @visitum.data, funcionario_id: @visitum.funcionario_id, setor_id: @visitum.setor_id, status: @visitum.status, visitante_id: @visitum.visitante_id } }
    assert_redirected_to visitum_url(@visitum)
  end

  test "should destroy visitum" do
    assert_difference("Visitum.count", -1) do
      delete visitum_url(@visitum)
    end

    assert_redirected_to visita_url
  end
end
