cask 'hosting-au' do
  version :latest
  sha256 '146fbc3034971cf494c7def03d8cf1685e10285d4efe08c48cf02644424e03e0'

  url 'http://ju-x.com/downloads/Hosting%20AU.zip'
  name 'Hosting AU microDAW'
  homepage 'http://ju-x.com/hostingau.html'

  app 'Hosting AU.app'

  uninstall quit: [
                    'com.ju-x.Hosting-AU',
                  ]

  zap delete: [
                '~/Library/Caches/com.ju-x.Hosting-AU',
              ]
end
