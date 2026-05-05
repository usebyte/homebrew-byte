cask "byte" do
  version "1.0.8"
  sha256 "cbf6fcb4fb9591d1752e7796a79e64a116119c5eb9ec3cc41a078d78de9c0c39"
  url "https://github.com/usebyte/byte/releases/download/v1.0.8/Byte_aarch64.dmg"

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
