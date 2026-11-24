cask "mcpainless" do
  version "0.3.0"
  sha256 "03f55c6ad884c145b05b0290f7fe84d406f61abe316d15ff3339d077cb203cd6"

  url "https://github.com/schovi/homebrew-tap/releases/download/mcpainless-v0.3.0/MCPainless.dmg"
  name "MCPainless"
  desc "Local manager and proxy for remote MCP servers"
  homepage "https://mcpainless.com"

  auto_updates true
  depends_on macos: :ventura

  app "MCPainless.app"

  zap trash: "~/Library/Preferences/com.mcpainless.app.plist"
end
