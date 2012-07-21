xml.qrm :goto, href: url_for(action: :show), 'xmlns:qrm' => 'http://qworum.net/' do
  xml.qrm :variable, name: 'result' do
    xml.sentence @sentence
  end
end
