cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "2f84360fe95bfee04a17357c09a7b35ade287f394393adb434408b4260449ec4",
         intel: "e14ac654ecebe810a49115b33b609f8fd0fdc1a373ef3ee940c5eec7062900d6"

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
