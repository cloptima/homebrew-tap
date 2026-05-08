class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_darwin_arm64.tar.gz"
      sha256 "be50dcb9fc6f3f8f8db8ecb2d22779ec99896b766a60125606b64d5473a19587"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_darwin_amd64.tar.gz"
      sha256 "7201dd575143a0d2b6497c9a813d6f52b8e94b7bc3932e48762a518f4a481b4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_linux_arm64.tar.gz"
      sha256 "c29f41f8c080e55e904aae3235428f6d5553e3d934785cca8e7eda06f69c24bc"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_linux_amd64.tar.gz"
      sha256 "df27e70d34a6b54d55b8f671ac30c7512d73562e6b9bd2eff30644a1c31925d2"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
