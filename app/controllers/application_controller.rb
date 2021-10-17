class ApplicationController < Sinatra::Base
  # require pry
  set :default_content_type, 'application/json'

  get '/article' do
    articles = Article.all.order(:id)
    articles.to_json
  end

  get '/comment/new' do 
    erb :'comments/new'
  end 

  get '/comment' do
    comments = Comment.all.order(:id)
    comments.to_json
  end

  post '/comment' do
    comments = Comment.create(params)
    comments.to_json(include: :comments)
    # binding.pry
  end

  patch "/comment" do
    comment = Comment.create(params)
    comment.to_json
  end

  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

end
# 