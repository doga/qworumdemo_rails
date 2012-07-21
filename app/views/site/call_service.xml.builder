xml.comment!("\n"+
  "  QWORUM SUPPORT IS MISSING IN YOUR BROWSER:\n"+
  "  This site only works correctly with Qworum enabled browsers. \n"+
  "  Please visit  http://www.qworum.com/products\n"
)
xml.qrm :goto, href: url_for(action: :receive_call_result), 'xmlns:qrm' => 'http://qworum.net/' do
  xml.qrm :call, href: url_for(controller: :qworum_service) do
    xml.name @name
  end
end
