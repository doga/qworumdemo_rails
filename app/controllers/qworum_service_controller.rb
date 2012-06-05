class QworumServiceController < ApplicationController
  before_filter :parse_xml_post

  # Read name argument, and return a sentence.
  def index
    name = @xml.elements['/name'].text
    @sentence = "Hello #{name} !"
    render template: "#{params[:controller]}/#{params[:action]}", formats: [:xml], handlers: [:builder]
  end
end
