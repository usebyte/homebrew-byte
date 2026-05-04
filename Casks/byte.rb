cask "byte" do
  version "1.0.4"
  sha256 "9d4909a91b38d4f80489feedf3430d82fc57593588e30466a1d9e47a09d4aa02"
  url "https://github.com/usebyte/byte/releases/download/v1.0.4/Byte_aarch64.dmg"

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
