class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.7.0/treehouse-cli_0.7.0_darwin_arm64.tar.gz"
      sha256 "8603dff5efd57991326372fae92b7508ec3a1456382aa81733ec8b7e29cfa7f5"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.7.0/treehouse-cli_0.7.0_darwin_amd64.tar.gz"
      sha256 "0a5a9949b05302f84393eb7c3f22319fc4bf2473d3d9d32d655f4231edc20ef7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.7.0/treehouse-cli_0.7.0_linux_arm64.tar.gz"
      sha256 "1afb71841d722cdb4e43120f5a95777271a5d2a859eeae49432f0bf525d7d49b"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.7.0/treehouse-cli_0.7.0_linux_amd64.tar.gz"
      sha256 "1d9572cd5fec642307a0e7aad6058166351dbdf305550828d4eb741e84047fa3"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
