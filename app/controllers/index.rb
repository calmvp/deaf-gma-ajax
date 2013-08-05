get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  input = params[:user_input]
  if input == input.upcase
    @grandma = "Nonsense! Not since 1983!"
  else
    @grandma = "Speak up, kiddo!"
  end

  erb :index
end
