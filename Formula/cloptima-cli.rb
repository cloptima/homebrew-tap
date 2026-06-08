class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.6.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.6.0/cloptima-cli_0.6.0_darwin_arm64.tar.gz"
      sha256 "b2e5838a842b5edf6bdd23cf7f4fa9a38f5d261f1a62c1af9be56532ae43f00c"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.6.0/cloptima-cli_0.6.0_darwin_amd64.tar.gz"
      sha256 "ca4166ccb5ea5b70222d24defae1223be4d92bf83bbb4cf4db026a1ab7d6fd5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.6.0/cloptima-cli_0.6.0_linux_arm64.tar.gz"
      sha256 "f9f10a8e115a3125a76b363a80291be15d52623e94bab693e31dc9d180d78af3"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.6.0/cloptima-cli_0.6.0_linux_amd64.tar.gz"
      sha256 "efe488436ddf5f64756b580d34b42337ffc0b972c8fba358037b74b6d96d7ce3"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
