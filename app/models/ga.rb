class Ga < ActiveRecord::Base

  require 'rubygems'
  require 'garb'
  Garb::Session.login('email', 'pwd')
  
  def self.query(params = nil) 
    profile = Garb::Profile.all.detect{|p| p.table_id == params[:profile_id].to_str}
    report = Garb::Report.new(profile, :start_date => start_date(params), :end_date => end_date(params), :limit => params[:limit].to_str, :offset => params[:offset].to_str)
    report.metrics params[:metrics]
    report.dimensions params[:dimensions]
    if params[:sort] == 'desc'
      sort =  params[:metrics].first
      report.sort sort.to_sym.desc
    end    
    report.results
  end

  def self.profiles
    profiles = Garb::Profile.all
    profiles_list = []
    profiles.each {|p| profiles_list.push [p.table_id,  p.title + ' (' + p.account_name.upcase + ')' ] }
    profiles = profiles_list.sort_by {|k,v| v }
  end

  def self.start_date(params = nil)
    start_date = Date.civil(params[:"start_date(1i)"].to_i,params[:"start_date(2i)"].to_i,params[:"start_date(3i)"].to_i)
  end

  def self.end_date(params = nil)
    end_date = Date.civil(params[:"end_date(1i)"].to_i,params[:"end_date(2i)"].to_i,params[:"end_date(3i)"].to_i)
  end
  
end
