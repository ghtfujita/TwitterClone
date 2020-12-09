class TwclonesController < ApplicationController
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
  private
  def twclone_params
    params.require(:twclone).permit(:content)
  end
end
