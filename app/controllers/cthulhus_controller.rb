class CthulhusController < ApplicationController
  def new
    @character = Character.find(params[:id])
    @cthulhu = Cthulhu.new
  end

  private
  def cthulhu_params
  end
end
