cask "symbol-wallet" do
  version "1.0.8"
  sha256 "bbb5e725f7d79c0afdccfd4e6692cd311cc47b1b420b64143aa9abc82f7b0b85"

  url "https://github.com/symbol/desktop-wallet/releases/download/v#{version}/symbol-desktop-wallet-mac-#{version}.dmg",
      verified: "https://github.com/symbol/desktop-wallet/"
  name "Symbol Desktop Wallet"
  desc "Client for Symbol to manage accounts, mosaics, namespaces, and issue transaction"
  homepage "https://symbolplatform.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*.*)$/i)
  end

  app "Symbol Wallet.app"
end
