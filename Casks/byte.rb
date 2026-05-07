cask "byte" do
  version "1.0.18"
  sha256 "f022ccb172a9168bf15d093010f5b6d6960a49dd4ebcc774d1086e485a598e20"
  url "https://github.com/usebyte/byte/releases/download/v1.0.18/Byte_aarch64.dmg"

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
