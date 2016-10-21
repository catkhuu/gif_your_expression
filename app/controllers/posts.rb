get '/posts/new' do
  erb :'/posts/new'
end

post '/posts' do
  gif_response = retrieve_keys(params[:tag])
  @post = Post.new(gif_response)
  @post.update(title: params[:title], tag: params[:tag])
  if @post.save
    status 200
    erb :'/posts/show', layout: false, locals: { post: @post }
  else
    status 500
    @errors = @post.errors.full_messages
    erb :'/posts/new'
  end
end
