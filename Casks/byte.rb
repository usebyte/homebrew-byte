cask "byte" do
  version "1.0.14"
  sha256 "8e2282c84f44bb9f31d5e7c4cef0e3894de1274dfb2ff145c040a1439236b791"
  url "https://github.com/usebyte/byte/releases/download/v1.0.14/Byte_aarch64.dmg"

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
