get '/' do
  if current_user
    redirect '/welcome'
  else
    redirect '/signin'
  end
end

get '/welcome' do
  @users = User.where(id: current_user.id).first.stars.limit(6)
  erb :welcome
end

post '/welcome' do
  @woot = Woot.new(
                  user_id: current_user.id,
                  body: params[:body]
                  )
  if @woot.save
    redirect '/'
  else
    status 404
    "That WOOT doesn't work... :("
  end
end
