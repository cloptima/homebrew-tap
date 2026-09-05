class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_darwin_arm64.tar.gz"
      sha256 "27ea0e3baa97c88d6c5d8d2fad2f7a870414ad4766652fe0e4854ab2804282a6"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_darwin_amd64.tar.gz"
      sha256 "f2dda6c52c3822abfe9d4f3d933a11032ef7c650bf2638d66920837cd6fc98d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_linux_arm64.tar.gz"
      sha256 "a5eed8fe349caf8bd350f82a801bac90674d8657d61eb020685f74effa123d71"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_linux_amd64.tar.gz"
      sha256 "00ba0279d421f68df6f90f2456f63fc1d8ce3ef43263b81deef7cc454537777a"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
