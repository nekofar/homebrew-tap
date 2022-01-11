require "language/node"

class Metaplex < Formula
  desc "Application framework for decentralized NFT minting, storefronts, and sales"
  homepage "https://metaplex.com/"
  url "https://github.com/metaplex-foundation/metaplex/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "33906c31fb4db8a2cb9526013beaba9575c0ea6867f5872024e3499346df6085"
  license "Apache-2.0"
  head "https://github.com/metaplex-foundation/metaplex.git", branch: "master"

  depends_on "node"
  depends_on "ts-node"
  depends_on "typescript"
  depends_on "yarn"

  def install
    cd "js" do
      system "yarn", "install", "--verbose"
    end

    prefix.install Dir["*"]

    if build.head?
      bin.install_symlink "#{prefix}/js/packages/cli/src/candy-machine-v1-cli.ts" => "metaplex-v1"

      chmod 0555, "#{prefix}/js/packages/cli/src/candy-machine-v2-cli.ts"
      bin.install_symlink "#{prefix}/js/packages/cli/src/candy-machine-v2-cli.ts" => "metaplex"
    else
      bin.install_symlink "#{prefix}/js/packages/cli/src/candy-machine-cli.ts" => "metaplex"
    end
  end

  test do
    system "#{bin}/metaplex", "--version"
  end
end
