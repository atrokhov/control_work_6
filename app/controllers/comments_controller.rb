class CommentsController < InheritedResources::Base

  def create
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comment.create(comment_params)
    @comment.user_id = current_user.id
    @score = Score.new


    redirect_to @picture
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :text)
  end

end

