get '/signin' do
  erb :signin
end

post '/signin' do
  @user = User.where(username: params[:username]).first if params[:username]
  p params[:password_hash]
  if @user && @user.password_hash == params[:password_hash]
    session[:user_id] = @user.id
    redirect to '/welcome'
  else
    raise params.inspect
    @errors = 'Your login info was incorrect! Please try again!'
    erb :signin
  end
end
