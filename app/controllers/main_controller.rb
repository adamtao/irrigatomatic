class MainController < ApplicationController
  before_filter :initialize_zone, only: [:turn_on, :turn_off, :force_on]

  def index
  end

  def turn_on
    begin
      @zone.turn_on
      redirect_to root_path, notice: "Zone #{@zone.number} is turned on as of #{Time.now.to_s}"
    rescue Exception => e
      redirect_to root_path, alert: e.message
    end
  end

  def turn_off
    @zone.turn_off
    redirect_to root_path, notice: "Zone #{@zone.number} is turned off"
  end

  def all_off
    Zone.all_off
    redirect_to root_path, notice: "All zones are off"
  end

  def status
  end

  def force_on
    @zone.force_on
    redirect_to root_path, notice: "Zone #{@zone.number} is turned on as of #{Time.now.to_s}"
  end

private
  
  def initialize_zone
    @zone ||= Zone.new(params[:id])
  end

end
