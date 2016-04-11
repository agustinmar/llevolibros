# encoding: UTF-8
class HomeController < ApplicationController
 
  def inicio
  	@title = "Novedades"
    @categorias = Categoria.all
    @titulos = Titulo.all
    @libros = Libro.order("updated_at DESC")
    @editores = Editor.all
    @autores = Autor.all
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
    @libros = Libro.order("updated_at DESC")
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
    @libros = Libro.all
    @categorias = Categoria.all
    @autores = Autor.all
    @autor = Autor.find(params[:id])
  end

  def editor
    @title = "Editor"
    @libros = Libro.all
    @editores = Editor.all
    @editor = Editor.find(params[:id])
    @categorias = Categoria.all
  end

  def libro
    @title = "Libro"
    @categorias = Categoria.all
    @libros = Libro.all
    @editores = Editor.all
    @titulos = Titulo.all
    @titulo = Titulo.find(params[:id])
    #@libro = Libro.find(params[:id])
    #@libro = Libro.where(titulo: @titulo)
    #@libro = Libro.where(:column => ["titulo", @titulo])
  end

  def buscar
    @title = "Buscar libros y autores"
    @titulos = Titulo.order("date DESC")
    @autores = Autor.order("date DESC")
    if params[:texto].present?
      @titulos = Titulo.where("translate(lower(nombre),'âãäåāăąÁÂÃÄÅĀĂĄèééêëēĕėęěĒĔĖĘĚìíîïìĩīĭÌÍÎÏÌĨĪĬóôõöōŏőÒÓÔÕÖŌŎŐùúûüũūŭůÙÚÛÜŨŪŬŮ',
    'aaaaaaaaaaaaaaaeeeeeeeeeeeeeeeiiiiiiiiiiiiiiiiooooooooooooooouuuuuuuuuuuuuuuu') LIKE ?", "%#{ActiveSupport::Inflector.transliterate(params[:texto]).downcase}%")
      @autores = Autor.where("translate(lower(nombre),'âãäåāăąÁÂÃÄÅĀĂĄèééêëēĕėęěĒĔĖĘĚìíîïìĩīĭÌÍÎÏÌĨĪĬóôõöōŏőÒÓÔÕÖŌŎŐùúûüũūŭůÙÚÛÜŨŪŬŮ',
    'aaaaaaaaaaaaaaaeeeeeeeeeeeeeeeiiiiiiiiiiiiiiiiooooooooooooooouuuuuuuuuuuuuuuu') LIKE ?", "%#{ActiveSupport::Inflector.transliterate(params[:texto]).downcase}%")
    end
    @categorias = Categoria.all
    @libros = Libro.all
  end

  def contacto
  	@title = "Contacta"
  end

end
