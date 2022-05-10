class Api::V1::PostsController < Api::BaseController
  def index
    respond_with paginate(filtered_collection(Post.all))
  end

  def show
    respond_with post
  end

  def create
    respond_with post.create!(post_params)
  end

  def update
    post.update!(post_params)
    respond_with post
  end

  def destroy
    respond_with post.destroy!
  end

  private

  def post
    @post ||= Post.find_by!(id: params[:id])
  end

  def post_params
    params.require(:post).permit(
      :author,
      :title,
      :body
    )
  end
end