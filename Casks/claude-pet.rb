cask "claude-pet" do
  version "0.1.12"
  sha256 "dc4c367062278179ae3f322fa5c527e2a2bd6d9267d374dfe32056a4188d9bea"

  url "https://github.com/Undefined1228/claude-pet-releases/releases/download/v#{version}/ClaudePet-#{version}.zip"
  name "Claude Pet"
  desc "Desktop pet that shows what each Claude Code session is doing"
  homepage "https://github.com/Undefined1228/claude-pet-releases"

  livecheck do
    url "https://github.com/Undefined1228/claude-pet-releases/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ClaudePet.app"

  uninstall quit: "dev.undef1228.ClaudePet"

  zap trash: "~/.claude-pet"

  caveats <<~EOS
    Open the menu bar paw icon → 설정… → 프롬프트 복사, then paste it into Claude Code to connect the hooks.
  EOS
end
