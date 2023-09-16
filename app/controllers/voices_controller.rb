class VoicesController < ApplicationController
  def new
    @voice = Voice.new
  end

  def create
    @voice = Voice.new
  end

  private

  def voice_params
    params.require(:voice).permit(:script, :accept)
  end
end
