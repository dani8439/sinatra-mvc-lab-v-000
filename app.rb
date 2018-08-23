require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed_text = PigLatinizer.new(params[:])

    erb :piglatinize
  end
end
