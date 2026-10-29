cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.0"
  sha256 arm:   "2013fe89487c7f35bf02c0af76ab409872f39f27e91588a7a46a6abcb8488518",
         intel: "e3525db54faed6f73af6059650f0fd06b2d4f34d0ab3ed0f00190ead20273b68"

  url "https://github.com/cloptima/cloptima-treehouse/releases/download/v0.9.0/Treehouse_#{version}_darwin_#{arch}.zip"
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
