cask "byte" do
  version "1.0.20"
  sha256 "09e2b9ca0866e055c82f33fc93fae45b29d9f685839f320aafa70b13707e047f"
  url "https://github.com/usebyte/byte/releases/download/v1.0.20/Byte_aarch64.dmg"

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
