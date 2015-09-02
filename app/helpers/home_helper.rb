module HomeHelper
	def enlace(nombre,accion)
		link_to nombre, :action=>accion
	end

	def is_active?(link_path)
  		current_page?(link_path) ? "active" : ""
	end

	def menu_nav(opciones)
		html = '<ul class="nav navbar-nav">'
		opciones.each do |nombre,accion|
			html += '<li class="'+is_active?(action: accion)+'">' + enlace(nombre,accion) + '</li>'
		end
		html += '</ul>'
		return html.html_safe
	end
end
