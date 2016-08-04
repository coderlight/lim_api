require 'open-uri'

class Api::PagesController < ApplicationController
  def create
    page_tmp_file = open(params[:url])
    
  end

  def show
    
  end
end