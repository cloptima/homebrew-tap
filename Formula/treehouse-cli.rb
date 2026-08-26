class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.4.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.4.0/treehouse-cli_0.4.0_darwin_arm64.tar.gz"
      sha256 "1ac7ef1e35f621425e759f2040fa74c9ec7ce8458428554f8b0d525bd056b6ea"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.4.0/treehouse-cli_0.4.0_darwin_amd64.tar.gz"
      sha256 "353d14a6716892a1b5c498561f643b63efad3fd1f62756588a117ae69e65961a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.4.0/treehouse-cli_0.4.0_linux_arm64.tar.gz"
      sha256 "efea7ce07a7819345dfc8a9aa9d1672bc9a805feb380641f7c0d9d2c4fe3d217"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.4.0/treehouse-cli_0.4.0_linux_amd64.tar.gz"
      sha256 "4be60bd93b1f51f423c3885bcdce4d144cbb5a78f6a933afbde3e8cfbc211ed1"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
