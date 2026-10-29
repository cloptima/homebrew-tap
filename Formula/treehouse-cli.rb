class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.9.0/treehouse-cli_0.9.0_darwin_arm64.tar.gz"
      sha256 "2d650b55f0217b6428a03988ddccec8e998f5dd39ad45042520fd0bde7239f2f"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.9.0/treehouse-cli_0.9.0_darwin_amd64.tar.gz"
      sha256 "b293e78a2c7ea0cdf3210090bc252e50c0dc1a21d614b79f1a9e9d621cc2ab25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.9.0/treehouse-cli_0.9.0_linux_arm64.tar.gz"
      sha256 "b5a2d9045f9b21cebe6c6f9bec1e38ed9241643257bbf98342251146639696c3"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.9.0/treehouse-cli_0.9.0_linux_amd64.tar.gz"
      sha256 "5ff05d03ce73938c80e1a153d5dfe0a4865935ee4aba71e37ddda67ff1e6410b"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
