class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_darwin_arm64.tar.gz"
      sha256 "a50590212be0ffc0ac3753758edfb0c4dfb9a53ffe30ed3f2a4de2ef405f5730"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_darwin_amd64.tar.gz"
      sha256 "b5b8d2a827414531939bb1463f37679a3feb676d360e36c8e24c183c7ad7db9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_linux_arm64.tar.gz"
      sha256 "7de15f8eebdbe18aaaa25e5ccfb2a9ca0057dcef5e3168b6178becd59dfb273c"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.5.0/cloptima-cli_0.5.0_linux_amd64.tar.gz"
      sha256 "68f5e95ae6eb41b79f1d4d061346b128f4e5d7d64172c380dbc7757b48d05f72"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
