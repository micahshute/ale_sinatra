class ApplicationController < Sinatra::Base

    set :views, ->{ File.join(root, "../views")}

    get '/' do 
        erb :'index'
    end

    get '/home' do 
        erb :'home'
    end


end