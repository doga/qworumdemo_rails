class SiteController < ApplicationController
  before_filter :parse_xml_post, only: :receive_call_result

  def index
  end
  
  # Generate Qworum message for calling the service defined above
  def call_service
    @name = 'Dave'
    render_xml
  end

  # Receive the result of service call
  def receive_call_result
    @sentence = @xml.elements['/sentence'].text
  end
end
