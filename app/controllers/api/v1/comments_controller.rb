class Api::V1::commentsController < Api::BaseController
  acts_as_token_authentication_handler_for User, only: [:create, :update, :destroy]

  def show
    respond_with comment
  end

  def create
    respond_with comment.create!(comment_params)
  end

  def update
    comment.update!(comment_params)
    respond_with comment
  end

  def destroy
    respond_with comment.destroy!
  end

  private

  def comment
    @comment ||= comment.find_by!(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(
      :author,
      :post_id,
      :title,
      :body
    )
  end
end