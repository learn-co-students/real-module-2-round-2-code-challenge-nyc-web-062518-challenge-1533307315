class AppearancesController < ActionController::Base

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
      if @appearance.save
        redirect_to episode_path(@appearance.episode)
      else
        flash[:notice] = "Please enter a guest rating in the range of 1 - 5."
        render :new
      end
  end

  def show
    @appearance = Appearance.find(params[:id])
  end


  private

  def appearance_params
    params.require(:appearance).permit(:guest_rating, :guest_id, :episode_id)
  end

end
