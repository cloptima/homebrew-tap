class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_darwin_arm64.tar.gz"
      sha256 "06c8bbc854e5946af3cc81e90e81c7b8609de6d66f7415d5d8b919b7fa463b39"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_darwin_amd64.tar.gz"
      sha256 "a6e69178c6847a7fdc1c4ccc5dfed0ae8fbdb8943d3228f8a1a4a59db7991395"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_linux_arm64.tar.gz"
      sha256 "fc451a599e1c2d7a38046621b15e78e789714c9f7f03a748de3328155d6f283a"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_linux_amd64.tar.gz"
      sha256 "02751afa9b03a2c4a9f1fe88902ea21f795278045a056570cad3dac7be36f5d5"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
