cask "byte" do
  version "1.0.25"
  sha256 "a196114fda9f4780966bad94de5c1818dc97a3c28d0789c51682fe710b5baa6c"
  url "https://github.com/usebyte/byte/releases/download/v1.0.25/Byte_aarch64.dmg"

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
