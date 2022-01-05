require "language/node"

class TsNode < Formula
  desc "TypeScript execution and REPL for node.js, with source map and native ESM support."
  homepage "https://typestrong.org/ts-node"
  url "https://registry.npmjs.org/ts-node/-/ts-node-10.4.0.tgz"
  sha256 "b0fd3485a6177e27c4d7690bbd91499997c15b4839179e60539e6a45dc15d4bf"
  license "MIT"
  head "https://github.com/TypeStrong/ts-node", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "9e21cc29d7cc58885cd8f3fff15000b4d7aeb304e7b6725b4d4329a8504a9763"
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink "#{libexec}/dist/bin.js" => "ts-node"
    bin.install_symlink "#{libexec}/dist/bin-script-deprecated.js" => "ts-script"
    bin.install_symlink "#{libexec}/dist/bin-script.js" => "ts-node-script"
    bin.install_symlink "#{libexec}/dist/bin-cwd.js" => "ts-node-cwd"
    bin.install_symlink "#{libexec}/dist/bin-transpile.js" => "ts-node-transpile-only"
  end

  test do
    system "#{bin}/ts-node", "--version"
  end
end
