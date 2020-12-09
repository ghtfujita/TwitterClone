class TwclonesController < ApplicationController
  before_action :set_twclone, only: [:edit, :update]
  def index
    @twclones = Twclone.all
  end
  def new
    @twclone = Twclone.new
  end
  def create
    @twclone = Twclone.create(twclone_params)
    if @twclone.save
    redirect_to new_twclone_path, notice: "tweeted!"
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @twclone.update(twclone_params)
      redirect_to twclones_path, notice: "tweet edited!"
    else
      render :edit
    end
  end
  def destroy
  end
  private
  def twclone_params
    params.require(:twclone).permit(:content)
  end
  def set_twclone
    @twclone = Twclone.find(params[:id])
  end
end
