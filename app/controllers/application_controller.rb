class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/' do 
      "Hello World"
    end
    
end
# bundle exec rerun -b 'rackup config.ru'