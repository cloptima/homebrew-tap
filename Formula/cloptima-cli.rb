class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.13.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_darwin_arm64.tar.gz"
      sha256 "da6b2eb809789e8c8237f8e65c03b2f7b0458f471b50024b10ae0930db3b16a4"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_darwin_amd64.tar.gz"
      sha256 "46d59138b4c41b2f77426b66134620c9a05e236e8d6b6afabd217fc02503c46e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_linux_arm64.tar.gz"
      sha256 "467869e84886df49e94772ec1738c097e7403e969eec3974a01fbe4a0f2595b5"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_linux_amd64.tar.gz"
      sha256 "b92c3c0a7630e5ae3821643574a3599fa284ba66cf55632b8ebd6ef4679a899d"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
