json.array!(@libros) do |libro|
  json.extract! libro, :id, :titulo_id, :editor_id, :paginas, :edicion, :fechapub, :pais_id, :idioma_id, :formato_id, :isbn10, :isbn13, :ean, :peso, :medidas, :portada
  json.url libro_url(libro, format: :json)
end
