class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.11.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.11.0/cloptima-cli_0.11.0_darwin_arm64.tar.gz"
      sha256 "dce5f374c60969ba1cc7fe47d7460e277310c877ab2ec26c3024144ac146a220"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.11.0/cloptima-cli_0.11.0_darwin_amd64.tar.gz"
      sha256 "3574868b8ecb552244f5c298d1079c2703588a6d27dcfe2ff7b963653e49ce64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.11.0/cloptima-cli_0.11.0_linux_arm64.tar.gz"
      sha256 "4e2456a3a31c950a46867de677152336726478678f5fdd1ad65ceac709c557b3"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.11.0/cloptima-cli_0.11.0_linux_amd64.tar.gz"
      sha256 "0c6e65818bde5bce7aa7c95f9e7425c72f9912c17eeb129fedaecfbb9c886bb6"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
