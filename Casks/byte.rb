cask "byte" do
  version "1.0.12"
  sha256 "ae0b41e0f1da1a65c00a2e302dcff5d2ef4358ffa8fc63443f97bcee8c47e0c7"
  url "https://github.com/usebyte/byte/releases/download/v1.0.12/Byte_aarch64.dmg"

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
