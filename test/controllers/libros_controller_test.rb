require 'test_helper'

class LibrosControllerTest < ActionController::TestCase
  setup do
    @libro = libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libro" do
    assert_difference('Libro.count') do
      post :create, libro: { ean: @libro.ean, edicion: @libro.edicion, editor_id: @libro.editor_id, fechapub: @libro.fechapub, formato_id: @libro.formato_id, idioma_id: @libro.idioma_id, isbn10: @libro.isbn10, isbn13: @libro.isbn13, medidas: @libro.medidas, paginas: @libro.paginas, pais_id: @libro.pais_id, peso: @libro.peso, portada: @libro.portada, titulo_id: @libro.titulo_id }
    end

    assert_redirected_to libro_path(assigns(:libro))
  end

  test "should show libro" do
    get :show, id: @libro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libro
    assert_response :success
  end

  test "should update libro" do
    patch :update, id: @libro, libro: { ean: @libro.ean, edicion: @libro.edicion, editor_id: @libro.editor_id, fechapub: @libro.fechapub, formato_id: @libro.formato_id, idioma_id: @libro.idioma_id, isbn10: @libro.isbn10, isbn13: @libro.isbn13, medidas: @libro.medidas, paginas: @libro.paginas, pais_id: @libro.pais_id, peso: @libro.peso, portada: @libro.portada, titulo_id: @libro.titulo_id }
    assert_redirected_to libro_path(assigns(:libro))
  end

  test "should destroy libro" do
    assert_difference('Libro.count', -1) do
      delete :destroy, id: @libro
    end

    assert_redirected_to libros_path
  end
end
