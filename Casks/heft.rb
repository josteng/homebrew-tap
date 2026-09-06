cask "heft" do
  version "0.2.0"
  sha256 "e2d9856f6f4dfb71bc0c0d90bc28d1393bbf597e1aafdd804e4e6e2129ab05bc"

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
