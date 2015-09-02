class HomeController < ApplicationController
  def inicio
  	@titulo = "Acerca de Llevo Libros"
  end

  def solicita
    @titulo = "Solicita un libro"
  end

  def contacto
  	@titulo = "Contacta"
  end
end
