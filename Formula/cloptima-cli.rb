class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.15.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.15.1/cloptima-cli_0.15.1_darwin_arm64.tar.gz"
      sha256 "6df77c9658b547f639366b8c0fd42678a8b85c9873dbf59a32440827cd9c7941"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.15.1/cloptima-cli_0.15.1_darwin_amd64.tar.gz"
      sha256 "cf8212dbd3495992fb566030f915ca9d0c5a3d86e07e714f71861a52751d1d9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.15.1/cloptima-cli_0.15.1_linux_arm64.tar.gz"
      sha256 "ada84c1ab4090dbda9a6b80ac226c7a59d235a7c9147e3d8e610eb43f94e496e"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.15.1/cloptima-cli_0.15.1_linux_amd64.tar.gz"
      sha256 "88deeb04d11b2394e3210252328cbbc9c30bb7c500f54f6693ed608efa067d6d"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
