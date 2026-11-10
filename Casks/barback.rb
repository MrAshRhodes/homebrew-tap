cask "barback" do
  version "0.5.0"
  sha256 "c962c9cabb86e0b16eb2d2dc6567d16a67e372a469e41a5c3f625f584773fb13"

  url "https://github.com/MrAshRhodes/barback/releases/download/v#{version}/Barback-#{version}.zip"
  name "Barback"
  desc "Fast, lightweight menu bar item hider"
  homepage "https://github.com/MrAshRhodes/barback"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Barback.app"

  # "Launch at login" uses SMAppService.mainApp; macOS drops that registration with the app bundle.
  uninstall quit: "io.github.mrashrhodes.barback"

  zap trash: [
    "~/Library/Caches/io.github.mrashrhodes.barback",
    "~/Library/HTTPStorages/io.github.mrashrhodes.barback",
    "~/Library/Preferences/io.github.mrashrhodes.barback.plist",
    "~/Library/Saved Application State/io.github.mrashrhodes.barback.savedState",
  ]

  caveats <<~EOS
    Core hiding needs no Screen Recording or Accessibility permission.
    Opening items from the optional drop-down panel requires Accessibility.
    When upgrading from an ad-hoc build, remove the old Barback entry in
    System Settings > Privacy & Security > Accessibility and add the new app.

    To hide a menu bar item, hold Command (⌘) and drag it to the left of
    Barback's separator, then click the Barback chevron (or press ⌃⌥⌘B)
    to show or hide it. Option-click the chevron to reveal always-hidden items.
  EOS
end
