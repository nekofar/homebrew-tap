require "language/node"

class TsNode < Formula
  desc "TypeScript execution and REPL for node.js, with source map and native ESM support."
  homepage "https://typestrong.org/ts-node"
  url "https://registry.npmjs.org/ts-node/-/ts-node-10.4.0.tgz"
  sha256 "b0fd3485a6177e27c4d7690bbd91499997c15b4839179e60539e6a45dc15d4bf"
  license "MIT"
  head "https://github.com/TypeStrong/ts-node.git", branch: "main"

  depends_on "node"
  depends_on "typescript"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
  end

  test do
    system "#{bin}/ts-node", "--version"
  end
end
