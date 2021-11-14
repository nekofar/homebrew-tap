class HiwebCli < Formula
  desc "Simple command-line tool to access HiWeb account information"
  homepage "https://github.com/nekofar/hiweb-cli"
  url "https://github.com/nekofar/hiweb-cli/releases/download/v1.0.0-alpha.6/hiweb.phar"
  sha256 "63d2c57de3636fbbf2432a6c04b466019faf2183949434994ed8ed05e37f259e"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "geckodriver"
  depends_on "php"

  def install
    bin.install "hiweb.phar" => "hiweb"
  end

  def caveats
    <<~EOS
      To use the HiWeb CLI, install the chromedriver cask.
    EOS
  end

  test do
    system "#{bin}/hiweb", "--version"
  end
end
