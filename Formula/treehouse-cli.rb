class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.1.0/treehouse-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "7acd0fb1f2bf648cc84fc70b2b919ee1d58e81e5b6b19a817550f35837933c13"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.1.0/treehouse-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "c569485072951688a700b10f9669781f669c20dbcd6055a4a3d7a602ea577350"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.1.0/treehouse-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "1078bf51a66bb5e0b9cb6029b3e9cffa1ce5bff38ec1adaa32d30ca64d3020f1"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.1.0/treehouse-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "c0216db0c64d1fdec9906ad3fe6970b81a6e1cb186765f16519ac4984281937e"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
