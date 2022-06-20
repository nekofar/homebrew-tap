# frozen_string_literal: true

# This plugin adds short aliases for the pnpm commands
class ZshPnpm < Formula
  desc "This plugin adds short aliases for the pnpm commands"
  homepage "https://github.com/nekofar/zsh-pnpm"
  url "https://github.com/nekofar/zsh-pnpm/archive/v1.0.0.tar.gz"
  sha256 "9f8046d3f1065bb6f844a181011f54f5607ba6a320cf2c0bbce24f57a6ee050b"
  license "MIT"
  head "https://github.com/nekofar/zsh-pnpm.git", branch: "master"

  depends_on "pnpm"
  depends_on "zsh" => :recommended

  def install
    pkgshare.install "zsh-pnpm.zsh"
  end

  def caveats
    <<~EOS
      To activate plugin, add the following at the end of your .zshrc:

        source #{HOMEBREW_PREFIX}/share/zsh-pnpm/zsh-pnpm.zsh

      If you prefer to manage the package with Homebrew but load it with
      a plugin manager, use your plugin manager to load the above path
      rather than `source`ing it.

      Then to activate plugin in already open sessions, restart zsh:

        exec zsh
    EOS
  end

  test do
    assert_match "1",
      shell_output("zsh -c '. #{pkgshare}/zsh-pnpm.zsh' && echo $(alias | grep pga | wc -l)'")
  end
end
