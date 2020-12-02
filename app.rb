require 'sinatra/base'

class App < Sinatra::Base
    get '/' do
        "Hello World"
    end

    get '/newteam' do
        erb :newteam
    end 

    post '/team' do
        @teamname = params[:name]
        @coachname = params[:coach]
        @pointguard = params[:pg]
        @shootingguard = params[:sg]
        @shortforward = params[:sf]
        @powerforward = params[:pf]
        @center = params[:c]

        erb :team

    end 


end
