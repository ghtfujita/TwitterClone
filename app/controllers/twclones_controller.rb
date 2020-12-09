class TwclonesController < ApplicationController
  def index
  end
  def new
    @twclone = Twclone.new
  end
  def create
    Twclone.create(twclone_params)
    redirect_to new_twclone_path
  end
  private
  def twclone_params
    params.require(:twclone).permit(:content)
  end
end
