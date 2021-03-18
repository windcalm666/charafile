class CharactersController < ApplicationController
  def index
    @character = Character.new
    @characters = Character.all
  end

  def create
    if @character = Character.create(character_params)
      case @character.system_id
      when 1
        redirect_to character_cthulhu_path(params[@character.id])
      when 2
      end
    else
      render :index
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character.update
    redirect_to root_path
  end

  def delete
    @character.delete
    redirect_to root_path
  end



  def search
    character = Character.find(params[:id])
    render json:{ character: character}
  end

  private
  def character_params
    params.require(:character).permit(:name, :system_id, :image).merge(user_id: current_user.id)
  end
end
