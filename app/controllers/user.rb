get '/users' do
  @users = User.all
  # "Hello Tastey"
  erb :"users/index"
end

get '/users/:id' do
  erb :"users/show"
end

get '/users/:id/stars' do
  # @user = User.where(id: params[:id]).first
  # @users = current_user.stars
  erb :"users/stars"
end

get '/users/:id/fans' do

end

delete '/user/:id' do
  session[:user_id] = nil
  redirect '/'
end

