class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.7.0/cloptima-cli_0.7.0_darwin_arm64.tar.gz"
      sha256 "418e1b154912381e98bd428613b078e7ae605e72886f5938fb3c062db9b4eafa"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.7.0/cloptima-cli_0.7.0_darwin_amd64.tar.gz"
      sha256 "6192f7f5f681b409014f37b15106e2e93397deb3285d6c577d393963a6d10745"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.7.0/cloptima-cli_0.7.0_linux_arm64.tar.gz"
      sha256 "ad234bcce3ee66cc904679094d608a51180adc0135b7a4bf8b0c60258a59b454"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.7.0/cloptima-cli_0.7.0_linux_amd64.tar.gz"
      sha256 "ac025257805776bbcc5cdc70fc7633c90122dd5818d04367e608961c6abb3a7b"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
