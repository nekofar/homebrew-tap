require "language/node"

class Hardhat < Formula
  desc "Development environment to compile, deploy, test, and debug Ethereum softwares"
  homepage "https://hardhat.org"
  url "https://registry.npmjs.org/hardhat/-/hardhat-2.8.3.tgz"
  sha256 "6dc40ac757a1f3504428bfaf61ade595be87922e46a4bcef87a9dafad81a8990"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"hardhat"
  end
end
