class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_darwin_arm64.tar.gz"
      sha256 "f92ac4ff4820c181cb051d50c9cd3b6a4d7b02aaa89c43ce13aa08f52d112fa3"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_darwin_amd64.tar.gz"
      sha256 "ef296818123d990ae621b6ffd9f4091d0cbee48006125313a5c487893864034e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_linux_arm64.tar.gz"
      sha256 "fea5e7b7e8c27ea46c3ebfbc153fb1e52e7a3f2c74b1e56798749aefb078d525"
    else
      url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/treehouse-cli_0.8.0_linux_amd64.tar.gz"
      sha256 "2369e729c2eaa910d8863818028f7b2ab351d9fdc20ab6f1f4594ee50d3c0c28"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
