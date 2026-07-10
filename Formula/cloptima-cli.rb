class CloptimaCli < Formula
  desc "Cloptima command line interface"
  homepage "https://cloptima.ai"
  version "0.12.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.12.0/cloptima-cli_0.12.0_darwin_arm64.tar.gz"
      sha256 "a7d7640bf0c3e6b24b8572359451d99133d6929e6c3ad0533df8d4f1984e006d"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.12.0/cloptima-cli_0.12.0_darwin_amd64.tar.gz"
      sha256 "255d1773c014c8d2b8a688ffdfa411ff990a2ba4cc43f19323c265a7b98fd6f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.12.0/cloptima-cli_0.12.0_linux_arm64.tar.gz"
      sha256 "4fbc9993f6c3dfa47f46a13e096152e995cfca04151516e7246fed9523b818cc"
    else
      url "https://github.com/cloptima/cloptima-binaries/releases/download/v0.12.0/cloptima-cli_0.12.0_linux_amd64.tar.gz"
      sha256 "772b77e9dd61cd93a6b87cb1665a11d1b6e33b22480679daa89e5c29ff084b3e"
    end
  end

  def install
    bin.install "cloptima"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloptima version")
  end
end
