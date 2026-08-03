class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.14.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.14.0/cloptima-cli_0.14.0_darwin_arm64.tar.gz"
      sha256 "de8fb237c8317e7d1d46be912fcc0910196b5f57d4807f566d6254e4056d1542"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.14.0/cloptima-cli_0.14.0_darwin_amd64.tar.gz"
      sha256 "3cdddd0fdedbf55b71a4e3a0abfb0eb1fb6d531b2be7f07c78fdd73100e97ad5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.14.0/cloptima-cli_0.14.0_linux_arm64.tar.gz"
      sha256 "542934fbb84dd3530bc8c56399189bc99de127d91dc0be31dcaa420671009c2f"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.14.0/cloptima-cli_0.14.0_linux_amd64.tar.gz"
      sha256 "a60d3900c3a927972ab031f2a5724afe30664f0b9bf4e677d6c47ee4060bf815"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
