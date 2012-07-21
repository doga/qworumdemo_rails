class QworumServiceController < ApplicationController
  before_filter :parse_xml_post, except: :result

  # Phase 1:
  # Receive call argument, compute result
  def index
    name = @xml.elements['/name'].text
    @sentence = "Hello #{name} !"
    render_xml
  end
  
  # Phase 2:
  # Show result to end-user
  def show
    @sentence = @xml.elements['/sentence'].text
  end
  
  # Phase 3:
  # Return result
  def result
    render_xml
  end
end
