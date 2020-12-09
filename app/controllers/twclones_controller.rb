class TwclonesController < ApplicationController
  before_action :set_twclone, only: [:edit, :update, :destroy]
  def index
    @twclones = Twclone.all
  end
  def new
    @twclone = Twclone.new
  end
  def create
    @twclone = Twclone.create(twclone_params)
    if params[:back]
      render :new
    else
      if @twclone.save
      redirect_to twclones_path, notice: "tweeted!"
      else
        render :new
      end
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
    @twclone.destroy
    redirect_to twclones_path, notice: "tweet deleted!"
  end
  def confirm
    @twclone = Twclone.new(twclone_params)
    render :new if @twclone.invalid?
  end
  private
  def twclone_params
    params.require(:twclone).permit(:content)
  end
  def set_twclone
    @twclone = Twclone.find(params[:id])
  end
end
