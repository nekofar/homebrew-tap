# frozen_string_literal: true

# The standalone Jetifier
class Jetifier < Formula
  desc "This tool migrates support libraries to equivalent AndroidX packages"
  homepage "https://developer.android.com/studio/command-line/jetifier"
  url "https://dl.google.com/dl/android/studio/jetifier-zips/1.0.0-beta10/jetifier-standalone.zip"
  sha256 "38186db9c9d1b745890b3d35c0667da1cac146ceb3c26aae5bf0802119472c1b"
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
