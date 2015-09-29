# encoding: UTF-8
class HomeController < ApplicationController
 
  def inicio
  	@title = "Novedades"
    @categorias = Categoria.all
    @titulos = Titulo.all
  end

  def acerca
    @title = "Acerca de Llevo Libros"
    @categorias = Categoria.all
  end

  def solicita
    @title = "Solicita un libro"
    @categorias = Categoria.all
  end

  def catalogo
    @title = "Catálogo"
    @categorias = Categoria.all
    @categoria = Categoria.find(params[:id])
    @autores = Autor.all
    @titulos = Titulo.all
  end

  def titulo
    @title = "Título"
    #@titulos = Titulo.all
    @libros = Libro.all
    @titulo = Titulo.find(params[:id])
    @editores = Editor.all
    @categorias = Categoria.all
    #@libro = Libro.where(:column => ["titulo", @titulo])
  end

  def autor
    @title = "Autor"
    @categorias = Categoria.all
    @autores = Autor.all
    @autor = Autor.find(params[:id])
  end

  def libro
    @title = "Libro"
    @categorias = Categoria.all
    #@libros = Libro.all
    #@editores = Editor.all
    @titulos = Titulo.all
    @titulo = Titulo.find(params[:id])
    @libro = Libro.find(params[:id])
    #@libro = Libro.where(titulo: @titulo)
    #@libro = Libro.where(:column => ["titulo", @titulo])
  end

  def contacto
  	@title = "Contacta"
  end

end
