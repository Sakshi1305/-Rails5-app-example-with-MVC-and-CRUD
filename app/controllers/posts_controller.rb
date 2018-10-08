class PostsController < ApplicationController
  # before_action :set_slug, only: :create

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:post][:title], message: params[:post][:message], permalink: Post.to_permalink(params[:post][:title]))
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find_by_permalink(params[:permalink])
  end

  # private
  # def set_slug
  #   loop do
  #     self.permalink = SecureRandom.uuid
  #     break unless Post.where(permalink: permalink).exists?
  #   end
  # end
end
