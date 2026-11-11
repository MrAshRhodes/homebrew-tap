cask "glint" do
  version "1.9.2"
  sha256 "b675f3da6b9a572eb25a4686865a97f36965b1bb91f4f7f4c5a011d416298333"

  url "https://github.com/MrAshRhodes/glint/releases/download/v#{version}/Glint-#{version}.zip"
  name "Glint"
  desc "Screenshot beautifier with backgrounds, annotations and smart redaction"
  homepage "https://github.com/MrAshRhodes/glint"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Glint.app"

  zap trash: [
    "~/Library/Application Support/Glint",
    "~/Library/Caches/io.github.mrashrhodes.glint",
    "~/Library/Preferences/io.github.mrashrhodes.glint.plist",
  ]

  caveats <<~EOS
    Glint is Developer ID-signed and notarized by Apple.

    Before the first capture, allow Glint under
      System Settings > Privacy & Security > Screen & System Audio Recording
    (called "Screen Recording" on macOS 14), then relaunch Glint.
    Subsequent Developer ID upgrades keep the same signing requirement.

    Upgrading from a self-signed release (1.5.3 or earlier)? Re-grant this permission once.
    In Glint, choose Preferences > About > Re-authorize Screen Recording…,
    allow Glint in System Settings, then relaunch Glint.
  EOS
end
