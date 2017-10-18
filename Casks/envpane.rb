cask 'envpane' do
  version '0.6'
  sha256 'f40d208f72b7c2c7208570c164e856bf74cbd57f6179b1efa6eca3f5fdb227df'

  url "https://github.com/hschmidt/EnvPane/releases/download/releases/#{version}/EnvPane-#{version}.dmg"
  appcast 'https://github.com/hschmidt/EnvPane/releases.atom',
          checkpoint: 'd3704e0aab4f8dfbab4e68fee87c846e24b1f846d16014a15b156db805eccf96'
  name 'EnvPane'
  homepage 'https://github.com/hschmidt/EnvPane'

  prefpane 'EnvPane.prefPane'

  caveats "#{token} does not work for setting the PATH environment variable"
end
