# MrAshRhodes Homebrew Tap

Install and update free, open-source macOS apps with [Homebrew](https://brew.sh/).

## Apps

All three apps are available through this tap and require **macOS 14 Sonoma or later**.

| App | What it does | Learn more |
| --- | --- | --- |
| **Glint** | Capture screenshots and screen recordings, then add backgrounds, padding, shadows, annotations and redaction. Processing stays on your Mac. | [Website](https://mrashrhodes.github.io/glint/) · [User guide](https://mrashrhodes.github.io/glint/guide.html) · [Source](https://github.com/MrAshRhodes/glint) |
| **Barback** | Hide and reveal menu bar icons with a click or keyboard shortcut, with an always-hidden section for items you rarely use. | [Website](https://mrashrhodes.github.io/barback/) · [Source](https://github.com/MrAshRhodes/barback) |
| **Whisker** | Customise mice and trackballs with button remapping, per-app and per-device profiles, pointer speed and acceleration, and scroll tuning. Trackpads and touch mice such as Magic Mouse are left unchanged. | [Website](https://mrashrhodes.github.io/whisker/) · [User guide](https://mrashrhodes.github.io/whisker/guide.html) · [Source](https://github.com/MrAshRhodes/whisker) |

## Install

With [Homebrew installed](https://brew.sh/), run the command for the app you want:

**Glint**

```sh
brew install --cask mrashrhodes/tap/glint
```

**Barback**

```sh
brew install --cask mrashrhodes/tap/barback
```

**Whisker**

```sh
brew install --cask mrashrhodes/tap/whisker
```

These commands add the tap automatically; no separate `brew tap` step is needed.
Open the installed app from Applications and follow its first-run permission prompts.
If macOS refuses to open an app, report the warning rather than bypassing Gatekeeper.

## Update

Save your work and quit the app before upgrading. For example, to update Glint:

```sh
brew update && brew upgrade --cask glint
```

Replace `glint` with `barback` or `whisker` to update that app.
Use Homebrew to update copies installed through this tap.

## Support

For installation, download or checksum failures from Homebrew, [open a tap issue](https://github.com/MrAshRhodes/homebrew-tap/issues).
Include the command you ran and its error output.

For app bugs or feature requests, use the relevant project's issue tracker:
[Glint](https://github.com/MrAshRhodes/glint/issues),
[Barback](https://github.com/MrAshRhodes/barback/issues) or
[Whisker](https://github.com/MrAshRhodes/whisker/issues).
