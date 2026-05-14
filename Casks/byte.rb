cask "byte" do
  version "1.0.23"
  sha256 "81c043c95ba148db084070f2a4ecd266462e76179ead6f2b3641451ab6f43192"
  url "https://github.com/usebyte/byte/releases/download/v1.0.23/Byte_aarch64.dmg"

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
