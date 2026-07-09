class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.8.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.8.0/cloptima-cli_0.8.0_darwin_arm64.tar.gz"
      sha256 "3e0ea43379605ecb4dffd7f5212f979cbaf8054ff661a64a44a7177dad54db49"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.8.0/cloptima-cli_0.8.0_darwin_amd64.tar.gz"
      sha256 "51e121a3291a3b5a97d0c220ff078f137a1c925db43d471f6c80e3c0d2a04a24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.8.0/cloptima-cli_0.8.0_linux_arm64.tar.gz"
      sha256 "483e5595e27c8b601cda3c14a4a0ccc1385bcd282870ad09511e9a08776d1be9"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.8.0/cloptima-cli_0.8.0_linux_amd64.tar.gz"
      sha256 "247fedd03d41facb2b1cbf3c32d01b084f3e1020c334c3a85ca124e864871770"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
