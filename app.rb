require 'sinatra/base'

class App < Sinatra::Application

  PRODUCTS = []

  get '/' do
    erb :index
  end

  get '/product/new' do
    erb :new_product
  end

  post '/' do
    product = params[:new_product]

    if product != nil
      PRODUCTS << product

      redirect('/')
    end

  end
end