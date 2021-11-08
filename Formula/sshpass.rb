# frozen_string_literal: true

class Sshpass < Formula
  desc "sshpass is a utility designed for running ssh using the mode referred to as 'keyboard-interactive' password authentication, but in non-interactive mode."
  homepage "https://sourceforge.net/projects/sshpass"
  url "https://sourceforge.net/projects/sshpass/files/sshpass/1.08/sshpass-1.08.tar.gz"
  sha256 "8bdacb8ca4ecf82c84a5effa2f75a8bf4ed9dd6f9d030f308fe11cffb3830b02"

  depends_on "gnu-sed"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
