get '/users' do
  @users = User.all
  # "Hello Tastey"
  erb :"users/index"
end

get '/users/:id' do
  @user = User.where(id: params[:id]).first
  erb :"users/show"
end

get '/users/:id/stars' do
  # session.inspect
  @users = User.where(id: params[:id]).first.stars
  erb :"users/stars"
end

get '/users/:id/fans' do
  @users = User.where(id: params[:id]).first.fans
  erb :"users/fans"
end

put '/users/:id' do
  @follow = Follow.new(fan_id: current_user.id, star_id: params[:id])
  if @follow.save
    redirect "/users/#{params[:id]}"
  else
    status 404
    "Something went wrong! :("
  end
end

delete '/users/:id' do
  session[:user_id] = nil
  redirect '/'
end

get '/tanaysfood/:id' do
  content_type :text
  fan_button
end

