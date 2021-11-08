cask "owallet" do
  version "0.9.28"
  sha256 "93a6b668292a0b62043d6b28d72314501cc5bbaacc0d6deb3493ccbea5c756d6"

  url "https://github.com/ontio/OWallet/releases/download/v#{version}/OWallet-#{version}-Mac-Setup.dmg"
  name "OWallet"
  desc "Comprehensive Ontology desktop wallet"
  homepage "https://github.com/ontio/OWallet/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*.*)$/i)
  end

  app "OWallet.app"
end
