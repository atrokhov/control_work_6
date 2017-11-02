class PicturesController < InheritedResources::Base

	def create
    @picture = Picture.new(picture_params)

    @picture.user_id = current_user.id

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def average
    @scores = Score.all
    
    count = []
    score = 0
    average = 0

    @scores.each do |key, value| 
      count.push value
    end

    sum_of_scores = count.inject(0) {|result, elem| result + elem}
    average = sum_of_scores.to_f / count.length.to_f
    return average
  end

  private

  	def set_picture
  		@picture = Picture.find(params[:id])
			@picture.image
  	end

    def picture_params
      params.require(:picture).permit(:title, :user_id, :score_id, :image)
    end
end

