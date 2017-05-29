cask 'midi-patchbay' do
  version '1.0.3'
  sha256 '2bbc4e68eab6e4ca87e9ced843fb8068e8e95bf91e6aaae4c66ef399abae65ce'

  url "https://s3.amazonaws.com/notahat/MIDIPatchbay-#{version}.zip"
  name 'MIDI Patchbay'
  homepage 'http://notahat.com/midi_patchbay/'

  app 'MIDI Patchbay.app'

  uninstall quit: [
                    'com.notahat.MIDIPatchbay',
                  ]

  zap delete: [
                '~/Library/Caches/com.notahat.MIDIPatchbay',
              ]
end