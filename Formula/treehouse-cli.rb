class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.6.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.6.0/treehouse-cli_0.6.0_darwin_arm64.tar.gz"
      sha256 "9d95c49ee50735b2a47d335182cb077099e61b4dad36fcd227a9263e4f2859e3"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.6.0/treehouse-cli_0.6.0_darwin_amd64.tar.gz"
      sha256 "0d63d395247cd380bc932341f1937b0d0001b0285d4aa926f59b402702f141c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.6.0/treehouse-cli_0.6.0_linux_arm64.tar.gz"
      sha256 "422b585c8d3be3af0bb55933136e6375ff45308473cb21111eacb2836d5f9610"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.6.0/treehouse-cli_0.6.0_linux_amd64.tar.gz"
      sha256 "1bdc22f66ba32140c781a5d17b9b9b2d485c1984d9bd43aae850fbef03a7f9f2"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
