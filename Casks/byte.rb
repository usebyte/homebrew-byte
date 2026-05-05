cask "byte" do
  version "1.0.10"
  sha256 "a1bd8e0585e2a0d2554124f577b573b3762d1e260de5e2d077ba56dcdf24d418"
  url "https://github.com/usebyte/byte/releases/download/v1.0.10/Byte_aarch64.dmg"

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
