class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.1/treehouse-cli_0.8.1_darwin_arm64.tar.gz"
      sha256 "359868ccc335df0b4dd646b16ac1b02c250b16ea833da27435617ab6ae1b4c0f"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.1/treehouse-cli_0.8.1_darwin_amd64.tar.gz"
      sha256 "387502ef1af25c356c3a8b05d641110193844bd1b210c56e3f67aed1c1e9094d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.1/treehouse-cli_0.8.1_linux_arm64.tar.gz"
      sha256 "c86aea456b53590257fe22c971894b6af24446cd824eedd416303e46f185d5f5"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.1/treehouse-cli_0.8.1_linux_amd64.tar.gz"
      sha256 "24ce08d2d2a1603fbbe19fdea8e3ff54e302235d248a3009a0f32b9bb9a9a78f"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
