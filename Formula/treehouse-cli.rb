class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.2.0/treehouse-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "a1ab17e6422e2ab3c378ebcf14d4bb2cb23bc726578a7706d83b8b73e1a74404"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.2.0/treehouse-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "16a8bdcd3f5c67a9d7f00f4e7926675f67027abda7ba22e8b8c10311e733e699"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.2.0/treehouse-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "463f61718c09798e435bc21df2afd701bb65c9929f7f5a360c838341ff350de1"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.2.0/treehouse-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "b445b15351d838daa81bf7d34a5b7c1512ca3fdc9e4d4946cf17aafbdd4d034a"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
