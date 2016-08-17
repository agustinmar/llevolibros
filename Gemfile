ruby '2.1.5'
source 'http://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.1.8'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Frameworks CSS de Bootstrap
gem 'bootstrap-sass'

# Gema que instala el archivo de inflections para pluralizar y singularizar según las reglas 
# en Español, incluye el locale en Español y agrega templates erb/haml para que el scaffold 
# genere las vistas en Español.
gem 'rieles'

# Rails_Admin para administrar(altas, bajas, cambios) la base de datos del sitio
gem 'rails_admin'

# If you are using Rails >= 3.1, you must also include a beta version of 
# MetaSearch and sass-rails to use gem activeadmin
# gem 'meta_search'

#Gema para convertir la base de datos a un archivo data.yml y subirlo al servidor
#rake db:data:dump   ->   Volcar la base de datos a db/data.yml
#rake db:data:load   ->   Cargar los contenidos de db/data.yml en la base de datos
gem 'yaml_db'

#gem 'readmorejs-rails', '~> 0.0.12'

group :development, :test do
	# Use mysql as the database for Active Record
	gem 'mysql2'
	# Para pruebas de envio de correo desde ambiente de pruebas
	gem 'letter_opener'
end

group :production do
	# Use Postgres as the database for Active Record Production
	gem 'pg'
	gem 'rails_12factor'
end