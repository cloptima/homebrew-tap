cask "treehouse" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "7f2b30d71984f2d38d3404f499f044494bf7c3dbe3a41bc71c5873d24b2bb443",
         intel: "f2222310aa14046bc0964e127f208d3be148f7e98726ba46bba20e43965ed6a1"

  url "https://github.com/cloptima/cloptima-binaries/releases/download/treehouse-v0.1.0/Treehouse_#{version}_darwin_#{arch}.zip"
  name "Treehouse"
  desc "Live git worktree/diff overview menu bar app"
  homepage "https://treehouse.cloptima.ai/"

  depends_on macos: :big_sur

  app "Treehouse.app"

  # Treehouse.app is ad-hoc signed rather than notarized (no Apple Developer
  # ID for this project), so Homebrew's download carries a quarantine
  # attribute and Gatekeeper would refuse the first launch. Stripping it here
  # is what makes the cask install work end to end without asking the user to
  # run anything afterwards, and it runs before the app is ever launched --
  # the only point at which the attribute can still be removed without root,
  # because macOS locks it once it has blocked a launch.
  postflight do
    system "xattr", "-r", "-d", "com.apple.quarantine", "#{appdir}/Treehouse.app"
  end

  # brew upgrade uninstalls the old version before laying down the new one,
  # so without this the bundle is replaced underneath a running menu bar app
  # -- which then keeps syncing from a deleted executable until someone
  # notices. The daemon also refuses to start while another instance holds
  # its lock (see config.AcquireDaemonLock), so a stale copy left running
  # here would block the upgraded one from starting at all.
  uninstall quit: "ai.cloptima.treehouse"

  # Both the config file and the stored credential live under ~/.treehouse
  # (config.ConfigDirName / auth.CredentialsDirName). The keychain entry is
  # deliberately not listed: a cask cannot remove it, and "treehouse logout"
  # is the supported way to clear it.
  zap trash: [
    "~/.treehouse",
    "~/Library/Saved Application State/ai.cloptima.treehouse.savedState",
  ]
end
