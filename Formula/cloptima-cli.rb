class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.17.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.17.1/cloptima-cli_0.17.1_darwin_arm64.tar.gz"
      sha256 "f8755ef3a5859361c9f499767767b6a1cbbb7ac94bf901cd271d1542c4071178"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.17.1/cloptima-cli_0.17.1_darwin_amd64.tar.gz"
      sha256 "06d4e0c84986cac0f0166b84c36008f34bc86cb9d47e687d9762e8bd3f5cdb28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.17.1/cloptima-cli_0.17.1_linux_arm64.tar.gz"
      sha256 "e939d83f91ce046925f548d52006206f234ac4579bf399508c04bd8e80b69eec"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/cloptima-cli-v0.17.1/cloptima-cli_0.17.1_linux_amd64.tar.gz"
      sha256 "d92c2be0765540459927f9c3ffdc24fe767b4440a197d3050e9bc7233d3711fb"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
