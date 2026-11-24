class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.19.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.19.0/cloptima-cli_0.19.0_darwin_arm64.tar.gz"
      sha256 "0ac478ac88ede383f48c9b313639ef841f8c8dbc32e323ee33dd26ecdba15bbd"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.19.0/cloptima-cli_0.19.0_darwin_amd64.tar.gz"
      sha256 "1404e9b6efc2440604c3bc4a3296fd4694c907e02a312ac87a4a22b546963625"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.19.0/cloptima-cli_0.19.0_linux_arm64.tar.gz"
      sha256 "26b203b4bd6fe197f6a8569ffe001c4b1364de1e93f6500a8476044284f4302d"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.19.0/cloptima-cli_0.19.0_linux_amd64.tar.gz"
      sha256 "eec223f89a242284012865e642d5667e3450f16b49ce457924f2dcfaba40c5d3"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
