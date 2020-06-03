class PizzasController < ApplicationController


    get '/pizzas' do 
        @pizzas = Pizza.all
        erb :'/pizzas/index'
    end

    get '/pizzas/new' do
        erb :'/pizzas/new'
    end

    get '/pizzas/:id' do 
        @pizza = Pizza.find(params[:id])
        erb :'/pizzas/show'
    end

    
    post '/pizzas' do
        Pizza.create(name: params[:name], toppings: params[:toppings], price: params[:price])
        redirect '/pizzas'
    end

end