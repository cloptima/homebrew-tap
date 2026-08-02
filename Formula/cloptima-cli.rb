class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.13.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_darwin_arm64.tar.gz"
      sha256 "e73966c5a6a5f49f1388a3518a5c4b49e8909527973b285e9a5236efb5cba3af"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_darwin_amd64.tar.gz"
      sha256 "a25b65526875576ef6b101d7e5a753f89753492db351163a752b546f87c8553f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_linux_arm64.tar.gz"
      sha256 "138eca001067002fc343f5bccf58c6a1f8345048a6a1b4b4eb0e40e64e966aca"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.13.0/cloptima-cli_0.13.0_linux_amd64.tar.gz"
      sha256 "8619f4c9f31f1a426183c74f181bb35e388ced564c72061d7195d2ec8edc34da"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
