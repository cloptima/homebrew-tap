class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.3.0/cloptima-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "0ee77aa7ea7e1db1180905a47a44da082681fa66287b26c15fd8051fffde85c9"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.3.0/cloptima-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "4d6474f00a6c9d963adb9011ae76ca066d4730874f46ee0792be770e94b8ea19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.3.0/cloptima-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "c9e9d13c9e8a74ff3f7aa10a3d08e2d135454755ffc0b9b630dfa9e9157c378b"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.3.0/cloptima-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "b33292633656c00a5b011d25fd115fa2a15fd03a2ad4f9d74a1d57f9ae09b575"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
