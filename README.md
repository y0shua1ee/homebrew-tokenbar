# Homebrew Tap for TokenBar

Install Yoshua's TokenBar fork with Homebrew Cask:

```sh
brew tap y0shua1ee/tokenbar
brew install --cask tokenbar
```

Upgrade:

```sh
brew update
brew upgrade --cask tokenbar
```

Uninstall:

```sh
brew uninstall --cask tokenbar
```

Notes:

- Current cask ships the adhoc-signed app from `y0shua1ee/TokenBar` releases.
- The current app zip is arm64-only and requires macOS Sonoma or newer.
- On first launch, macOS may require right-click → Open because the fork release is adhoc-signed rather than notarized.
