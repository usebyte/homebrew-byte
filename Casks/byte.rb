cask "byte" do
  version "1.0.13"
  sha256 "cfee44d1262936647ac14655d1c1724d24054268a5888f1e6fa4a2276e459eab"
  url "https://github.com/usebyte/byte/releases/download/v1.0.13/Byte_aarch64.dmg"

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
