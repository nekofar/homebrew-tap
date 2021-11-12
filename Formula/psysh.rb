class Psysh < Formula
  desc "Interactive, parameterized shell for PHP"
  homepage "https://psysh.org/"
  url "https://psysh.org/psysh"
  version "0.10.9"
  sha256 "f077db35797a426138c8cebfa0655e97e766c05a2786ec22ac661f37a3dc53ba"
  license "MIT"

  depends_on "php"

  def install
    bin.install "psysh"
  end

  test do
    system "psysh", "--version"
  end
end
