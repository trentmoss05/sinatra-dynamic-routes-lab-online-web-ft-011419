require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    @squared.to_s
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number, @phrase = :number, :phrase
    @number.times do
      "#{@phrase}"
    end
  end
end
