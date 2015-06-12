get '/signup' do
  erb :signup
end

post '/signup' do
  p params
  p "*" * 100
  if params[:user][:password_hash] == params[:password_hash_verify]
    @user = User.new(params[:user])
    #set a session now that they are logged in
    if @user.save
      session[:id] = @user.id
      redirect '/'
    end
  end
  @error = "Sorry, your passwords don't match or your info was not correct. Please try again"
  erb :signup
end
