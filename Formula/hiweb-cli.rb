class HiwebCli < Formula
  desc "Simple command-line tool to access HiWeb account information"
  homepage "https://github.com/nekofar/hiweb-cli"
  url "https://github.com/nekofar/hiweb-cli/releases/download/v1.0.0-alpha.6/hiweb.phar"
  sha256 "d284e10f38a5741be38327d12795ff6971074635ba50531fd1ea54298be9e2d1"
  license "MIT"

  depends_on "chromedriver"
  depends_on "geckodriver"
  depends_on "php"

  def install
    bin.install "hiweb.phar" => "hiweb"
  end

  test do
    system "#{bin}/hiweb", "--version"
  end
end
