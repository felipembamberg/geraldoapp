require 'test_helper'

class IndividuosControllerTest < ActionController::TestCase
  setup do
    @individuo = individuos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individuos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individuo" do
    assert_difference('Individuo.count') do
      post :create, individuo: { email: @individuo.email, nome: @individuo.nome, observacao: @individuo.observacao, telefone: @individuo.telefone }
    end

    assert_redirected_to individuo_path(assigns(:individuo))
  end

  test "should show individuo" do
    get :show, id: @individuo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individuo
    assert_response :success
  end

  test "should update individuo" do
    put :update, id: @individuo, individuo: { email: @individuo.email, nome: @individuo.nome, observacao: @individuo.observacao, telefone: @individuo.telefone }
    assert_redirected_to individuo_path(assigns(:individuo))
  end

  test "should destroy individuo" do
    assert_difference('Individuo.count', -1) do
      delete :destroy, id: @individuo
    end

    assert_redirected_to individuos_path
  end
end
