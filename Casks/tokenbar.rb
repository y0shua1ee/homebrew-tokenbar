cask "tokenbar" do
  version "0.37.7"
  sha256 "28aa5a81b19e66485736f5cd2a202f57f0f8e4f8d079b59c812276d62f2cccab"

  url "https://github.com/y0shua1ee/TokenBar/releases/download/v#{version}/TokenBar-macos-universal-#{version}.zip"
  name "TokenBar"
  desc "Menu bar usage monitor for AI coding assistants"
  homepage "https://github.com/y0shua1ee/TokenBar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "TokenBar.app"
  binary "#{appdir}/TokenBar.app/Contents/Helpers/TokenBarCLI", target: "tokenbar"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/TokenBar.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/.tokenbar",
    "~/Library/Application Scripts/com.y0shua1ee.tokenbar",
    "~/Library/Application Scripts/com.y0shua1ee.tokenbar.widget",
    "~/Library/Application Support/com.y0shua1ee.tokenbar",
    "~/Library/Application Support/TokenBar",
    "~/Library/Caches/com.y0shua1ee.tokenbar",
    "~/Library/Caches/TokenBar",
    "~/Library/Containers/com.y0shua1ee.tokenbar",
    "~/Library/Containers/com.y0shua1ee.tokenbar.widget",
    "~/Library/Group Containers/group.com.y0shua1ee.tokenbar",
    "~/Library/Group Containers/Y5PE65HELJ.com.y0shua1ee.tokenbar",
    "~/Library/HTTPStorages/com.y0shua1ee.tokenbar",
    "~/Library/HTTPStorages/com.y0shua1ee.tokenbar.binarycookies",
    "~/Library/Preferences/com.y0shua1ee.tokenbar.plist",
    "~/Library/Saved Application State/com.y0shua1ee.tokenbar.savedState",
    "~/Library/WebKit/com.y0shua1ee.tokenbar",
  ]
end
