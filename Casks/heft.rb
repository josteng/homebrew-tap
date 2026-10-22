cask "heft" do
  version "0.7.0"
  sha256 "85a9f7d0a82c03c8bb9cebc9c24a569ac1937e03816d181121c2b60217438126"

  url "https://github.com/josteng/Heft/releases/download/v#{version}/Heft-#{version}.zip"
  name "Heft"
  desc "Markdown vault editor with a command-line interface for coding agents"
  homepage "https://github.com/josteng/Heft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Heft.app"
  binary "#{appdir}/Heft.app/Contents/MacOS/Heft", target: "heft"

  zap trash: [
    "~/Library/Application Support/Heft",
    "~/Library/Preferences/dev.stenglein.Heft.plist",
    "~/Library/Saved Application State/dev.stenglein.Heft.savedState",
  ]
end
