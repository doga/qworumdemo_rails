xml.qrm :goto, href: url_for(action: :receive_call_result), 'xmlns:qrm' => 'http://qworum.net/' do
  xml.qrm :call, href: url_for(controller: :qworum_service) do
    xml.name @name
  end
end
