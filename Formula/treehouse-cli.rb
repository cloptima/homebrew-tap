class TreehouseCli < Formula
  desc "Headless git worktree/diff sync daemon for Treehouse"
  homepage "https://treehouse.cloptima.ai"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.5.0/treehouse-cli_0.5.0_darwin_arm64.tar.gz"
      sha256 "aed398f6bb31429ce4b8f37e552a4915c3316a2ae78d6a9fcd8e4be735319f4f"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.5.0/treehouse-cli_0.5.0_darwin_amd64.tar.gz"
      sha256 "2ec93a4815722970f5ebbf1b87421d69d38dfd20d43591d8e3861a88c5cd1559"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.5.0/treehouse-cli_0.5.0_linux_arm64.tar.gz"
      sha256 "5ee8e963e349b54d92c82c2a6ab86f6a06af955d7bec9e0cbb4fb3b80937c884"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.5.0/treehouse-cli_0.5.0_linux_amd64.tar.gz"
      sha256 "2057c7b6cc725569cda883d6fb389d86dc598e0552a7ec3b10dcbc0a3330c391"
    end
  end

  def install
    bin.install "treehouse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/treehouse version")
  end
end
