# frozen_string_literal: true

# The standalone Jetifier
class Jetifier < Formula
  desc "This tool migrates support libraries to equivalent AndroidX packages"
  homepage "https://developer.android.com/studio/command-line/jetifier"
  url "https://dl.google.com/dl/android/studio/jetifier-zips/1.0.0-beta09/jetifier-standalone.zip"
  sha256 "91986b8eb159914e7ec5fb3f6a159c182d7d4cd278a632385b2df9d3af39ddf1"
  license "Apache-2.0"

  bottle :unneeded

  depends_on "openjdk@8"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install "bin", "lib"
    bin.install_symlink libexec/"bin/jetifier-standalone" => "jetifier"
  end

  test do
    assert_match "Jetifier", shell_output("#{bin}/jetifier | head -2 | tail -1 | grep -Eo 'Jetifier'")
  end
end
