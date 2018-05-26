# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
  	print env
    if env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<p>Estás en el Index!</p>']]
	elsif env['REQUEST_PATH'] == '/otro'
    	[200, { 'Content-Type' => 'text/html' }, ['<p>Estás en otro landing</p>']]
  	else
  		[404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
  	end	
  end
end
run MiPrimeraWebApp.new