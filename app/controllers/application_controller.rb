class ApplicationController < ActionController::Base
#  protect_from_forgery
  require 'rexml/document'
  
  def index
    redirect_to controller: :site
  end
  
protected
  def parse_xml_post 
    @xml = nil
    return unless request.post?
    xml = nil
    xml = request.raw_post if request.content_type == 'application/xml'
    xml = params[:qworum] unless xml
    @xml = REXML::Document.new xml
    @xml = nil unless @xml and @xml.root
  rescue
    @xml = nil
  end
  def render_xml
    render template: "#{params[:controller]}/#{params[:action]}", formats: [:xml], handlers: [:builder]
  end
end
