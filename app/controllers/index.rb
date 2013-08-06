get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/grandma' do
  if params[:user_input].upcase == params[:user_input]
    @grandma = "Nonsense! Not since 1983!"
  else
    @grandma = "Speak up, kiddo!"
  end

  if request.xhr?
    erb :_gma_says, layout: false
  else 
    redirect "/?grandma=#{@grandma}"
  end


end

