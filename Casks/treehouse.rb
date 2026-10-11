cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.2"
  sha256 arm:   "06315ee87a6cc8bcaebbfdacc9e8657c0fcad75275c93c93f9ba36daac5efb8b",
         intel: "a3c3b83d7032e106be15a3c985aa300128e582e894f6f91f57c3a04b61715779"

  url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.2/Treehouse_#{version}_darwin_#{arch}.zip"
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
