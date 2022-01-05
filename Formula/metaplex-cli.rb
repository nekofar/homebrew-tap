require "language/node"

class MetaplexCli < Formula
  desc "Protocol and application framework for decentralized NFT minting, storefronts, and sales."
  homepage "https://metaplex.com/"
  url "https://github.com/metaplex-foundation/metaplex/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "33906c31fb4db8a2cb9526013beaba9575c0ea6867f5872024e3499346df6085"
  license "Apache-2.0"
  head "https://github.com/metaplex-foundation/metaplex.git", branch: "master"

  depends_on "node"
  depends_on "yarn"
  depends_on "typescript"
  depends_on "ts-node"

  def install
    system "yarn", "install", "--cwd", "./js/"
  end

  test do
    system "#{bin}/candy-machine-cli", "--version"
  end
end
