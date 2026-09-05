cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.1"
  sha256 arm:   "b5094334fe3ac9c6900f3b45e4137c0142a4b8310622c79276f981a46aa6ffb4",
         intel: "54d810608564e48e5ae12ecafbed07ca87706fa8ca950afa13078ef82baa7827"

  url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.8.1/Treehouse_#{version}_darwin_#{arch}.zip"
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
