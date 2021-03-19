class CthulhusController < ApplicationController
  def new
    @cthulhu = Cthulhu.new
  end

  private
  def cthulhu_params
  end
end
