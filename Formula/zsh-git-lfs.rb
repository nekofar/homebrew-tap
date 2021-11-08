# frozen_string_literal: true

# This plugin adds short aliases for the git-lfs commands
class ZshGitLfs < Formula
  desc "This plugin adds short aliases for the git-lfs commands"
  homepage "https://github.com/nekofar/zsh-git-lfs"
  url "https://github.com/nekofar/zsh-git-lfs/archive/v1.0.1.tar.gz"
  sha256 "c9c1dcb0e4c3c6f8c72e3e8468e442c2f4525c9fc6c953816d3ed022d5bdb0a3"
  license "MIT"
  head "https://github.com/nekofar/zsh-git-lfs.git"

  depends_on "git-lfs"
  depends_on "zsh" => :recommended

  def install
    pkgshare.install "zsh-git-lfs.zsh"
  end

  def caveats
    <<~EOS
      To activate plugin, add the following at the end of your .zshrc:

        source #{HOMEBREW_PREFIX}/share/zsh-git-lfs/zsh-git-lfs.zsh

      If you prefer to manage the package with Homebrew but load it with
      a plugin manager, use your plugin manager to load the above path
      rather than `source`ing it.

      Then to activate plugin in already open sessions, restart zsh:

        exec zsh
    EOS
  end

  test do
    assert_match "1",
      shell_output("zsh -c '. #{pkgshare}/zsh-git-lfs.zsh' && echo $(alias | grep glfv | wc -l)'")
  end
end
