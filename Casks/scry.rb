cask "scry" do
  version "0.1.0"
  sha256 "fc1317d1b6d631eea377c96bbf44656b5ef482624a8ce9c5108453143e410c7a"

  url "https://github.com/stefanlegg/scry/releases/download/v#{version}/Scry-macOS.zip"
  name "Scry"
  desc "Dev server detective — menu bar app, CLI, and MCP server"
  homepage "https://github.com/stefanlegg/scry"

  depends_on macos: ">= :ventura"

  app "Scry.app"

  binary "#{appdir}/Scry.app/Contents/MacOS/scry"
  binary "#{appdir}/Scry.app/Contents/MacOS/scry-mcp"

  zap trash: [
    "~/Library/Preferences/com.stefanlegg.Scry.plist",
    "~/Library/Application Support/Scry",
  ]
end
