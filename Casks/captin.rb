cask 'captin' do
  version '1.0.7'
  sha256 'd3f6d10a8a52adcaf8b7571126b214ab9bb3ea7e41e8f7842a6b1c405e76b58c'

  url "https://dl.devmate.com/com.100hps.captin/Captin.dmg"
  name 'Captin'
  homepage 'http://captin.strikingly.com'

  app 'Captin.app'

  zap delete: [
                '~/Library/Caches/com.100hps.captin',
                '~/Library/Preferences/com.100hps.captin.plist',
                '~/Library/Saved Application State/com.100hps.captin.savedState'
              ]
