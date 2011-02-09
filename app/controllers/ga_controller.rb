class GaController < ApplicationController

  before_filter :profiles_list

  def report   
    @stuff = {}
    if !params[:profile].nil?
      @results = Ga.query(params[:profile])
      @stuff = params[:profile]
      @start_date = Ga.start_date(params[:profile])
      @end_date = Ga.end_date(params[:profile])
    end
  end

  def profiles_list
    @profiles = Ga.profiles
  end
  
end