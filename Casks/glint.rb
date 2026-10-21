cask "glint" do
  version "1.1.0"
  sha256 "6423c5d2daf7e91f01c88b8a76be02b6536662cf285eda196a0ce1327184bab3"

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

  # Glint is signed ad-hoc rather than notarized, so Gatekeeper would refuse to open a quarantined
  # copy. Clearing the quarantine flag keeps `brew install --cask` a one-step install.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Glint.app"],
        must_succeed: false
  end

  zap trash: [
    "~/Library/Application Support/Glint",
    "~/Library/Caches/io.github.mrashrhodes.glint",
    "~/Library/Preferences/io.github.mrashrhodes.glint.plist",
  ]

  caveats <<~EOS
    Glint is signed ad-hoc and is not notarized by Apple.

    Before the first capture, allow Glint under
      System Settings > Privacy & Security > Screen & System Audio Recording
    (called "Screen Recording" on macOS 14), then relaunch Glint.
  EOS
end
