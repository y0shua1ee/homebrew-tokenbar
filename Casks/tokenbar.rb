cask "tokenbar" do
  version "0.24.4"
  sha256 "9f9d791bccbd98df86d54bc9e004c639957c4b3bc408de438fd7a7bf897e5410"

  url "https://github.com/y0shua1ee/TokenBar/releases/download/v#{version}/TokenBar-#{version}-adhoc.zip",
      verified: "github.com/y0shua1ee/TokenBar/"
  name "TokenBar"
  desc "Menu bar usage monitor for AI coding assistants"
  homepage "https://github.com/y0shua1ee/TokenBar"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "TokenBar.app"
  binary "#{appdir}/TokenBar.app/Contents/Helpers/TokenBarCLI", target: "tokenbar"

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
    "~/Library/Group Containers/Y5PE65HELJ.com.y0shua1ee.tokenbar",
    "~/Library/HTTPStorages/com.y0shua1ee.tokenbar",
    "~/Library/HTTPStorages/com.y0shua1ee.tokenbar.binarycookies",
    "~/Library/Preferences/com.y0shua1ee.tokenbar.plist",
    "~/Library/Saved Application State/com.y0shua1ee.tokenbar.savedState",
    "~/Library/WebKit/com.y0shua1ee.tokenbar",
  ]
end
