get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url/:message/:textarea_form/:group/:group1/:mydropdown' do
  @post = params[:message]
  @post2 = params[:textarea_form]
  @post3 = params[:group]
  @post4 = params[:group1]
  @post5 = params[:mydropdown]  
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  @post = params[:message]
  @post2 = params[:textarea_form]
  @post3 = params[:group]
  @post4 = params[:group1]
  @post5 = params[:mydropdown]
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  redirect '/cool_url/' + @post + '/' + @post2 + '/' + @post3 + '/' + @post4 + '/' + @post5 
end
