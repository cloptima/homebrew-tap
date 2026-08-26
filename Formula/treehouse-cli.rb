class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.3.0/treehouse-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "960b2a471e603e9d06f66636aeb6d7f577fa0703f61cbefb12bfa0c96a04d781"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.3.0/treehouse-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "091ee3eeb13f58452efbacbb8c658d3f33b7817de5a668e83752b78b1ed875bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.3.0/treehouse-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "b8e37d1442413dc51e9205e82e46a6fe97d1af53b03bd6bd0303e8d6a5df2288"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.3.0/treehouse-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "d0e1a4a25ab2bdc4abcb5496930d8ddfb5000edaac58b9ef39f453c18d0ea6c4"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
