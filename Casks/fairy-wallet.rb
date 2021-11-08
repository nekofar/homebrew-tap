cask "fairy-wallet" do
  version "0.10.0"
  sha256 "77c391b662ce284f407d3fab1c1a3cdec25bf6736996ba82ed5efa8626a8ab4b"

  url "https://github.com/tarassh/fairy-wallet/releases/download/v#{version}/FairyWallet-#{version}.dmg"
  name "Fairy Wallet"
  desc "Ledger Nano S compatible wallet for EOS"
  homepage "https://github.com/tarassh/fairy-wallet/"

  app "FairyWallet.app"
end
