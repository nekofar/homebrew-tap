cask "nem-wallet" do
  version "2.6.1"
  sha256 "d8d75da9fecc0ddf663aaf015b7e94667b4be67f9d2e8d0f4f600caa7c4a6d97"

  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NEM-Wallet-mac-#{version}.dmg",
      verified: "https://github.com/NemProject/NanoWallet/"
  name "NEM Wallet"
  desc "Cross-platform lite wallet written in JavaScript"
  homepage "https://nemplatform.com/wallets"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*.*)$/i)
  end

  app "Nem Wallet.app"
end
