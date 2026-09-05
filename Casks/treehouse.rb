cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "e8d4cf8245e5c7b3320b523d44e42fa7d0eecde4246824de37878cd26691e927",
         intel: "4726fe75c15a2a69036e33ee49732127011257bec0cf52fa3bcfd8f860c71283"

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
