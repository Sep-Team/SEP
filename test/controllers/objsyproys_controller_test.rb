require 'test_helper'

class ObjsyproysControllerTest < ActionController::TestCase
  setup do
    @objsyproy = objsyproys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objsyproys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objsyproy" do
    assert_difference('Objsyproy.count') do
      post :create, objsyproy: { departamento_id: @objsyproy.departamento_id, descripcion: @objsyproy.descripcion, nombre: @objsyproy.nombre }
    end

    assert_redirected_to objsyproy_path(assigns(:objsyproy))
  end

  test "should show objsyproy" do
    get :show, id: @objsyproy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objsyproy
    assert_response :success
  end

  test "should update objsyproy" do
    patch :update, id: @objsyproy, objsyproy: { departamento_id: @objsyproy.departamento_id, descripcion: @objsyproy.descripcion, nombre: @objsyproy.nombre }
    assert_redirected_to objsyproy_path(assigns(:objsyproy))
  end

  test "should destroy objsyproy" do
    assert_difference('Objsyproy.count', -1) do
      delete :destroy, id: @objsyproy
    end

    assert_redirected_to objsyproys_path
  end
end
