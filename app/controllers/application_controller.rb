class ApplicationController < Sinatra::Base
  # require pry
  set :default_content_type, 'application/json'

  get '/article' do
    articles = Article.all.order(:id)
    articles.to_json
  end

  def index
    comments = Comment.all
    comments.to_json
  end 

  get '/comment/new' do 
    erb :'comments/new'
  end 

  get '/comment' do
    comments = Comment.all.order(:id)
    comments.to_json
  end

  post '/comment' do
    comments = Comment.create(comment_params).json
    # binding.pry
  end

  patch "/comment" do
    comment = Comment.create(comment_params)
    comment.to_json
  end

  delete "/comment" do
    comment = Comment.find(params[:id])
    comment.destroy
    render json: {message: 'this comment was deleted'}
  end

  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  private 

  def comment_params
    params.require(:comment).permit(:user, :comment)
  end 

  def comment_params2 
    comment_params2 = %w(comment_text)
    params.select {|param,value| allowed_params.include?(param)}
  end


end
# 