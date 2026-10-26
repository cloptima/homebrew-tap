class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.16.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.16.0/cloptima-cli_0.16.0_darwin_arm64.tar.gz"
      sha256 "b81ff09a04d0d1ba18974006a8ecf09f3b44fb1a156b7c7b70d81a5cae6543d6"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.16.0/cloptima-cli_0.16.0_darwin_amd64.tar.gz"
      sha256 "7b491c49f31e865011a3844fd46e78aafda6f38c83fb2d3cf1c5e3cb96c4044c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.16.0/cloptima-cli_0.16.0_linux_arm64.tar.gz"
      sha256 "0970b8238bbc48be1a98e2be322bbea3f73db6c754b356a600195b69069154a4"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.16.0/cloptima-cli_0.16.0_linux_amd64.tar.gz"
      sha256 "c14ab2ee143ee5cfeecf214a1f9ab3d6bb28fad6c05d65d680201e501271ca85"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
