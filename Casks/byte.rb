cask "byte" do
  version "1.0.11"
  sha256 "1c41ad94a091a0093712d0f8dd7e51c90f568792659ada07ad09419bb57d0eeb"
  url "https://github.com/usebyte/byte/releases/download/v1.0.11/Byte_aarch64.dmg"

  name "Byte"
  desc "AI assistant for your desktop"
  homepage "https://github.com/usebyte/byte"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Byte.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/Byte.app"]
  end
end
