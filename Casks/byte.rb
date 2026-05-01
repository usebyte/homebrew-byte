cask "byte" do
  version "1.0.2"
  sha256 "878e2545637eac010bd27193a060ad1f194d5e63f7f376a36c6c931291c101bb"
  url "https://github.com/usebyte/byte/releases/download/v1.0.2/Byte_aarch64.dmg"

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
