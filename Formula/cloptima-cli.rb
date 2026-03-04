class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.1.0/cloptima-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "030e69841b144e967049016dbefad0042a4aeae0e30273484de2ca9edeb1434c"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.1.0/cloptima-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "d8ed65e5a453b1da6771bc6e897da9c05a50b56970711fea85790f3f41dbcbba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.1.0/cloptima-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "5059ba769c04fbaeb0aeedd8b662ed21f402670f82576f4c7baf5304da024012"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.1.0/cloptima-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "8c6dd5da563f056baf3102a478454b61acca5964f208f4b8ed9cbc9e363881cd"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
