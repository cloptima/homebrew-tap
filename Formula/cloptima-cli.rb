class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.18.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.18.0/cloptima-cli_0.18.0_darwin_arm64.tar.gz"
      sha256 "2c596091575954ba4bdcc1029ac6046498a20c5b1e73c27bdaab7f984ae91d76"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.18.0/cloptima-cli_0.18.0_darwin_amd64.tar.gz"
      sha256 "c0f01002b0b612f5dc8add2813130a8c2096e3364433497a3fc7debfa2b100c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.18.0/cloptima-cli_0.18.0_linux_arm64.tar.gz"
      sha256 "d11a5d7b93b09b079772c333d5789da67cc7a8940bd21b4391cbcf108e94d28a"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.18.0/cloptima-cli_0.18.0_linux_amd64.tar.gz"
      sha256 "ca63a1db644986f4d487748edf2288dfbe44194e3a343e73cfaafe925b3a5f69"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
