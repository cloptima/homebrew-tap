class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.2.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.2.0/cloptima-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "ed04e5934a7210e01ce7311c0c83dfbbf9d3e3ab827b1adcec0060637ac754c0"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.2.0/cloptima-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "220f000d81be3acde661a01263fdd711106e007c99a893243191101032790f9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.2.0/cloptima-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "876d9ab21f3299c00aab6015d1f10fd5bc726ec08f01723728fdd9b2e047f192"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.2.0/cloptima-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "b6a46bd3cf85a38decfc1d87b11592e68fb5c45ac9ccc1b26348d66455dca95a"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
