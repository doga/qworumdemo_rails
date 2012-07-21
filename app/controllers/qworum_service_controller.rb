class QworumServiceController < ApplicationController
  before_filter :parse_xml_post, except: :result

  # Read name argument, and return a sentence.
  def index
    name = @xml.elements['/name'].text
    @sentence = "Hello #{name} !"
    render_xml
  end
  
  def show
    @sentence = @xml.elements['/sentence'].text
  end
  
  def result
    render_xml
  end
end
