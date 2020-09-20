# frozen_string_literal: true

# This plugin adds short aliases for the git-flow commands
class ZshGitFlowAvh < Formula
  desc "This plugin adds short aliases for the git-flow commands"
  homepage "https://github.com/nekofar/zsh-git-flow-avh"
  url "https://github.com/nekofar/zsh-git-flow-avh/archive/v1.0.0.tar.gz"
  sha256 "1cedc8357420daa1e39d278ed53cf3a5a3591f768898a33a836cf1eab4204dda"
  license "MIT"
  head "https://github.com/nekofar/zsh-git-flow-avh.git", branch: "master"

  bottle :unneeded

  depends_on "git-flow-avh"
  depends_on "zsh" => :recommended

  def install
    pkgshare.install "zsh-git-flow-avh.zsh"
  end

  def caveats
    <<~EOS
      To activate plugin, add the following at the end of your .zshrc:

        source #{HOMEBREW_PREFIX}/share/zsh-git-flow-avh/zsh-git-flow-avh.zsh

      If you prefer to manage the package with Homebrew but load it with
      a plugin manager, use your plugin manager to load the above path
      rather than `source`ing it.

      Then to activate plugin in already open sessions, restart zsh:

        exec zsh
    EOS
  end

  test do
    assert_match "1",
      shell_output("zsh -c '. #{pkgshare}/zsh-git-flow-avh.zsh' && echo $(alias | grep gfli | wc -l)'")
  end
end
