cask 'captin' do
  version :latest
  sha256 :no_check

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.100hps.captin/Captin.dmg'
  name 'Captin'
  homepage 'http://captin.strikingly.com/'

  auto_updates 'yes'

  app 'Captin.app'

  uninstall quit:       [
                          'com.100hps.captin',
                        ],

            login_item: [
                          'Captin',
                        ]

  zap delete: [
                '~/Library/Caches/com.100hps.captin',
                '~/Library/Saved Application State/com.100hps.captin.savedState',
              ],

      trash:  [
                '~/Library/Preferences/com.100hps.captin.plist',
              ]
end
