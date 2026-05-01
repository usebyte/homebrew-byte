cask "byte" do
  version "1.1.2"
  sha256 "8adfc699740afad3bd551a21ee1f93c349d28faccf9619a29e0eed208641160e"
  url "https://github.com/usebyte/byte/releases/download/v1.1.2/Byte_aarch64.dmg"

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
