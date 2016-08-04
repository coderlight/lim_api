require 'open-uri'

class Api::PagesController < ApplicationController
  def create
    tmp = Nokogiri::HTML(open(params[:url]))
    @page = Page.create(path: params[:url])

    tmp.css('h1').each do |h1| 
      H1Tag.create(content: h1.text, page_id: @page.id)
    end
    
    tmp.css('h2').each do |h2|
      H2Tag.create(content: h2.text, page_id: @page.id)
    end

    tmp.css('h3').each do |h3|
      H3Tag.create(content: h3.text, page_id: @page.id)
    end

    tmp.css('a').each do |a|
      UrlTag.create(content: a.attr('href'), page_id: @page.id)
    end

    if @page.save
      redirect_to api_page_path(@page)
    else
      redirect_to root_path, notice: "Bad url!"
    end
  end

  def show
    @page = Page.find(params[:id])

    render json: {"h1_tags": @page.h1_tags.map(&:content),
                  "h2_tags": @page.h2_tags.map(&:content),
                  "h3_tags": @page.h3_tags.map(&:content),
                  "url_tags": @page.url_tags.map(&:content)}
  end
end