class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.9.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.9.0/cloptima-cli_0.9.0_darwin_arm64.tar.gz"
      sha256 "ae1bbb2f24415bc09db08d080cbb1eaf7ead0b533dd72d6d46967ae9179b4710"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.9.0/cloptima-cli_0.9.0_darwin_amd64.tar.gz"
      sha256 "1fa49bda0b538bb70d44dc26d758701a5da001edc21d5ac49ee945fcb4e5414e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.9.0/cloptima-cli_0.9.0_linux_arm64.tar.gz"
      sha256 "17387e4d21f2baa62c75947f52922ae058805168d1e2b260f42007b3b4147a6d"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.9.0/cloptima-cli_0.9.0_linux_amd64.tar.gz"
      sha256 "a56caccf458995a15708185d0c47c94541d680ffc8a964a9dcf265e15a4d1848"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
