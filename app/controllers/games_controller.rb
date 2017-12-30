class GamesController < ApplicationController
  def index

  end

  def create
    if UsedCard.count > 9999
      UsedCard.destroy_all
      sleep 19
    end

    @resp = UsedCard.add(sign: params[:sign], value: params[:value])
    case @resp.state
    when :new
      flash[:notice] = "#{params[:sign]}, #{params[:value]} pridany"
      redirect_to games_path
    when :used
      render :used
    else
      raise 'unknown state'
    end
  end

  def reset
    flash[:notice] = "Hra vyresetovana"
    UsedCard.destroy_all
    redirect_to games_path
  end
end
