cask "byte" do
  version "1.0.17"
  sha256 "4719015c6b79252d24f6bac2789ec8240cbf7716aabb917f9729771d2c0efa78"
  url "https://github.com/usebyte/byte/releases/download/v1.0.17/Byte_aarch64.dmg"

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
