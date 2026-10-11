class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.2/treehouse-cli_0.8.2_darwin_arm64.tar.gz"
      sha256 "55a05e8dd352e0b42fb71391e8ef89a40bb5164c6bf8acffc95ea53160a41959"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.2/treehouse-cli_0.8.2_darwin_amd64.tar.gz"
      sha256 "146f404578dbb0b4bda371b3dc4314b83925b7fca395cc67fb2defd6771ec767"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.2/treehouse-cli_0.8.2_linux_arm64.tar.gz"
      sha256 "92ac9ba786f0096da69d8af37d49db273ddde68fe7ed5ef77f4c287840ec43e3"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.2/treehouse-cli_0.8.2_linux_amd64.tar.gz"
      sha256 "270fd3a5c0b4af110f88581c65bde4f08ecc7430c5938210e913fa4c13b99b92"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
