cask "byte" do
  version "1.0.21"
  sha256 "0834cd2f0b4a39ddc16a6e6c8655c8afe6ae31fa73c664018641f66d5912e17d"
  url "https://github.com/usebyte/byte/releases/download/v1.0.21/Byte_aarch64.dmg"

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
