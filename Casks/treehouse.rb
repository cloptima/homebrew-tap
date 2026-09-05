cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "31c5349bcd7ec1395165619e508fd24c05a6d31beeab2469c37295f9db664509",
         intel: "4a8628ea09a043589ab46493e7e4591403cc1b89c26ccbacd209d61c65ceaaff"

  url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.0/Treehouse_#{version}_darwin_#{arch}.zip"
  name "Treehouse"
  desc "Live git worktree/diff overview menu bar app"
  homepage "https://treehouse.cloptima.ai/"

  depends_on macos: :ventura

  app "Treehouse.app"
  binary "#{appdir}/Treehouse.app/Contents/MacOS/treehouse"

  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/Treehouse.app"
  end

  uninstall quit: "ai.cloptima.treehouse"

  zap trash: [
    "~/.treehouse",
    "~/Library/Saved Application State/ai.cloptima.treehouse.savedState",
  ]
end
