Gem::Specification.new do |s|
  s.name = 'c32'
  s.version = '0.3.0'
  s.summary = 'Makes it easier to read debug messages using coloured text.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/c32.rb']
  s.signing_key = '../privatekeys/c32.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/c32'
end
