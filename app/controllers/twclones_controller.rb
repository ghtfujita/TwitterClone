class TwclonesController < ApplicationController
  def index
  end
  def new
    @twclone = Twclone.new
  end
end
