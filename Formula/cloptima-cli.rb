class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.4.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.4.0/cloptima-cli_0.4.0_darwin_arm64.tar.gz"
      sha256 "a667b524f6208d4494e51f4d80a59fa138c88000b384afd850d9f045a43d9262"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.4.0/cloptima-cli_0.4.0_darwin_amd64.tar.gz"
      sha256 "89836189e6a23b4ac3bfec163a47df0b8e69c44b68e8dbf3b6a4203fa003acf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.4.0/cloptima-cli_0.4.0_linux_arm64.tar.gz"
      sha256 "09fa4a98ea1e7479e126327272b27f4540c5c6714e4348da7073235817b807fd"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.4.0/cloptima-cli_0.4.0_linux_amd64.tar.gz"
      sha256 "7d0a8eba632a4b844d5b12b088df1a52c6d9fa52fbdf682edf23a32729ad118f"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
