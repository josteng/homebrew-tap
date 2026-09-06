cask "heft" do
  version "0.1.0"
  sha256 "f38387beb903a7fcacce9448d545a4fa4923af114aa09a90e4087b51ad6b2eab"

  url "https://github.com/josteng/Heft/releases/download/v#{version}/Heft-#{version}.zip"
  name "Heft"
  desc "Markdown vault editor with a command-line interface for coding agents"
  homepage "https://github.com/josteng/Heft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Heft.app"
  binary "#{appdir}/Heft.app/Contents/MacOS/Heft", target: "heft"

  zap trash: [
    "~/Library/Application Support/Heft",
    "~/Library/Preferences/dev.stenglein.Heft.plist",
    "~/Library/Saved Application State/dev.stenglein.Heft.savedState",
  ]
end
