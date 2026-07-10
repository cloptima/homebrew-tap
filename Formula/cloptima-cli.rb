class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.10.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.10.0/cloptima-cli_0.10.0_darwin_arm64.tar.gz"
      sha256 "41dcf52827481794931d4e464591f6c4816bb86a767dc4f30a499869b62655de"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.10.0/cloptima-cli_0.10.0_darwin_amd64.tar.gz"
      sha256 "bb20323cefd72cbfbb1c6b7388c63fae24e947df570f89449f60ad5fda40544d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.10.0/cloptima-cli_0.10.0_linux_arm64.tar.gz"
      sha256 "f03d6dc8069820045c1a84ac97342bf6b2be91ead429811bdde88fec6be4b3da"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.10.0/cloptima-cli_0.10.0_linux_amd64.tar.gz"
      sha256 "d0293b1511047e52ea128e310ea1b4d21e62eb549d0dbb0cbc4105008410b67c"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
