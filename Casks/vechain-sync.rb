cask "vechain-sync" do
  version "1.3.0"
  sha256 "ffc989e9c881fca6315b312c74304f23b98d5536791b1547b19c3bc91155e081"

  url "https://github.com/vechain/thor-sync.electron/releases/download/v#{version}/Sync-mac-#{version}.dmg",
      verified: "https://github.com/vechain/thor-sync.electron/"
  name "VeChain Sync"
  desc "Browser that empowers DApps on VeChain"
  homepage "https://env.vechain.org/#sync"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*.*)$/i)
  end

  app "VeChain/Sync.app"
end
