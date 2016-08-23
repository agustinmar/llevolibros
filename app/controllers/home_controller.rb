# encoding: UTF-8
class HomeController < ApplicationController
 
  def inicio
  	@title = "Novedades del mes"
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
    #@titulo = Titulo.find(params[:id])
    @libro = Libro.find(params[:id])
    #@libro = Libro.where(titulo: @titulo)
    #@libro = Libro.where(:column => ["titulo", @titulo])
  end

  def buscar
    @title = "Buscar libros y autores"
    @titulos = Titulo.order("date DESC")
    @autores = Autor.order("date DESC")
    @solicitud = Solicitud.new
    if params[:texto].present?
      #Desarrollo
      #@titulos = Titulo.where("lower(nombre) LIKE ?", "%#{params[:texto].downcase}%")
      #@autores = Autor.where("lower(nombre) LIKE ?", "%#{params[:texto].downcase}%")
      #Producción
      @titulos = Titulo.where("translate(lower(nombre),'âãäåāăąÁÂÃÄÅĀĂĄèééêëēĕėęěĒĔĖĘĚìíîïìĩīĭÌÍÎÏÌĨĪĬóôõöōŏőÒÓÔÕÖŌŎŐùúûüũūŭůÙÚÛÜŨŪŬŮ','aaaaaaaaaaaaaaaeeeeeeeeeeeeeeeiiiiiiiiiiiiiiiiooooooooooooooouuuuuuuuuuuuuuuu') LIKE ?", "%#{ActiveSupport::Inflector.transliterate(params[:texto]).downcase}%")
      @autores = Autor.where("translate(lower(nombre),'âãäåāăąÁÂÃÄÅĀĂĄèééêëēĕėęěĒĔĖĘĚìíîïìĩīĭÌÍÎÏÌĨĪĬóôõöōŏőÒÓÔÕÖŌŎŐùúûüũūŭůÙÚÛÜŨŪŬŮ','aaaaaaaaaaaaaaaeeeeeeeeeeeeeeeiiiiiiiiiiiiiiiiooooooooooooooouuuuuuuuuuuuuuuu') LIKE ?", "%#{ActiveSupport::Inflector.transliterate(params[:texto]).downcase}%")
    end
    @categorias = Categoria.all
    @libros = Libro.all
  end

  def contacto
  	@title = "Contacto"
    @categorias = Categoria.all
    
    if request.post?
      #Enviar el correo electrónico
      begin
        if Email.micorreo(params).deliver and Email.enviar(params).deliver
          flash.now[:notice] = "El mensaje fue enviado exitosamente"
        end
      rescue
        flash.now[:notice] = "El mensaje no pudo ser enviado"
      end
    end
  end

  def solicita
    @title = "Solicita un libro"
    @categorias = Categoria.all
    @solicitud = Solicitud.new
  end

  def crear
    @categorias = Categoria.all
    @solicitud = Solicitud.new(solicitud_params)

    respond_to do |format|
      if @solicitud.save
        ActionCorreo.misolicitud.deliver
        format.html { redirect_to home_solicita_path, notice: 'Gracias, la información fue enviada y pronto recibirás respuesta.' }
        format.json { render action: 'solicita', status: :created, location: @solicitud }
      else
        format.html { render action: 'solicita' }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def solicitud_params
    params.require(:solicitud).permit(:titulo, :autor, :informacion, :nombre, :correo, :telefono)
  end
end