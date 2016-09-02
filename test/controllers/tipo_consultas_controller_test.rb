require 'test_helper'

class TipoConsultasControllerTest < ActionController::TestCase
  setup do
    @tipo_consulta = tipo_consultas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_consultas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_consulta" do
    assert_difference('TipoConsulta.count') do
      post :create, tipo_consulta: { duracao: @tipo_consulta.duracao, nome: @tipo_consulta.nome }
    end

    assert_redirected_to tipo_consulta_path(assigns(:tipo_consulta))
  end

  test "should show tipo_consulta" do
    get :show, id: @tipo_consulta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_consulta
    assert_response :success
  end

  test "should update tipo_consulta" do
    patch :update, id: @tipo_consulta, tipo_consulta: { duracao: @tipo_consulta.duracao, nome: @tipo_consulta.nome }
    assert_redirected_to tipo_consulta_path(assigns(:tipo_consulta))
  end

  test "should destroy tipo_consulta" do
    assert_difference('TipoConsulta.count', -1) do
      delete :destroy, id: @tipo_consulta
    end

    assert_redirected_to tipo_consultas_path
  end
end
