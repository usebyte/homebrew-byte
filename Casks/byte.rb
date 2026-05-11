cask "byte" do
  version "1.0.19"
  sha256 "5c890dc43589ed9a5b13efe426e4302902df63633d75a9c9562e9ed8a435df6c"
  url "https://github.com/usebyte/byte/releases/download/v1.0.19/Byte_aarch64.dmg"

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
