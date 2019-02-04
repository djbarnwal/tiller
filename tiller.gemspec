require './lib/tiller/version.rb'

Gem::Specification.new do |s|
  s.name = 'tiller'
  s.version = VERSION
  s.date = '2018-02-04'
  s.summary = 'Dynamic configuration file generation'
  s.description = 'A tool to create configuration files from a variety of sources, particularly useful for Docker containers. See https://github.com/markround/tiller for examples and documentation.'
  s.authors = ['Mark Dastmalchi-Round']
  s.email = 'github@markround.com'
  s.files = %w(
    lib/tiller/api.rb
    lib/tiller/api/handlers/404.rb
    lib/tiller/api/handlers/ping.rb
    lib/tiller/api/handlers/config.rb
    lib/tiller/api/handlers/globals.rb
    lib/tiller/api/handlers/templates.rb
    lib/tiller/api/handlers/template.rb
    lib/tiller/loader.rb
    lib/tiller/logger.rb
    lib/tiller/options.rb
    lib/tiller/util.rb
    lib/tiller/defaults.rb
    lib/tiller/datasource.rb
    lib/tiller/json.rb
    lib/tiller/http.rb
    lib/tiller/consul.rb
    lib/tiller/vault.rb
    lib/tiller/kv.rb
    lib/tiller/templatesource.rb
    lib/tiller/data/file.rb
    lib/tiller/data/zookeeper.rb
    lib/tiller/data/http.rb
    lib/tiller/data/environment.rb
    lib/tiller/data/environment_json.rb
    lib/tiller/data/environment_nested.rb
    lib/tiller/data/external_file.rb
    lib/tiller/data/random.rb
    lib/tiller/data/defaults.rb
    lib/tiller/data/xml_file.rb
    lib/tiller/data/consul.rb
    lib/tiller/data/vault.rb
    lib/tiller/data/ansible_vault.rb
    lib/tiller/template/file.rb
    lib/tiller/template/zookeeper.rb
    lib/tiller/template/http.rb
    lib/tiller/template/consul.rb
    lib/tiller/template/vault.rb
    lib/tiller/render.rb
    lib/tiller/version.rb
  )
  s.executables << 'tiller'
  s.homepage =
      'http://www.markround.com/blog/categories/tiller/'
  s.license = 'MIT'
  s.metadata = { 'source' => 'https://github.com/markround/tiller' }
  s.required_ruby_version = '>= 1.9.2'
end
