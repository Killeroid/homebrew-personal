cask 'captin' do
  version '1.0.8,74'
  sha256 'cd46aef55b22d10d13256f30e4f16087931f4eaa346b1d69afc66fea0f819f57'

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
