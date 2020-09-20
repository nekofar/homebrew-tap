# frozen_string_literal: true

# It takes care of ANE implementation in your AIR projects
cask 'ane-lab' do
  version '3.20.0'
  sha256 :no_check

  url 'https://github.com/myflashlab/ANE-LAB/blob/master/bucket/aneLab.dmg'
  name 'ANE LAB'
  desc 'It takes care of ANE implementation in your AIR projects.'
  homepage 'https://www.myflashlabs.com'

  app 'ANE LAB.app'
end
