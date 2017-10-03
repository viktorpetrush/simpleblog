class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def new
    @category = Category.find(params[:category_id])
    @post = @category.posts.build
  end

  def edit
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @category, notice: "Post created." }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post.category, notice: "Post updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post deleted."
    redirect_to @post.category
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:name, :content, :file, :category_id)
    end
end
