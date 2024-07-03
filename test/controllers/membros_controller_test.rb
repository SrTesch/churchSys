require "test_helper"

class MembrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membro = membros(:one)
  end

  test "should get index" do
    get membros_url
    assert_response :success
  end

  test "should get new" do
    get new_membro_url
    assert_response :success
  end

  test "should create membro" do
    assert_difference("Membro.count") do
      post membros_url, params: { membro: { Area: @membro.Area, DataNascimento: @membro.DataNascimento, Endereco: @membro.Endereco, NomeCompleto: @membro.NomeCompleto, telefone: @membro.telefone } }
    end

    assert_redirected_to membro_url(Membro.last)
  end

  test "should show membro" do
    get membro_url(@membro)
    assert_response :success
  end

  test "should get edit" do
    get edit_membro_url(@membro)
    assert_response :success
  end

  test "should update membro" do
    patch membro_url(@membro), params: { membro: { Area: @membro.Area, DataNascimento: @membro.DataNascimento, Endereco: @membro.Endereco, NomeCompleto: @membro.NomeCompleto, telefone: @membro.telefone } }
    assert_redirected_to membro_url(@membro)
  end

  test "should destroy membro" do
    assert_difference("Membro.count", -1) do
      delete membro_url(@membro)
    end

    assert_redirected_to membros_url
  end
end
