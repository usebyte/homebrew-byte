cask "byte" do
  version "0.0.0"
  sha256 "f1eea754026dac1dd1625fcbf32d6b16c4f48904ab9acedfd5f3fe67da97fda9"
  url "https://github.com/usebyte/byte/releases/download/v0.0.0/Byte_aarch64.dmg"

  name "Byte"
  desc "AI assistant for your desktop"
  homepage "https://github.com/usebyte/byte"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Byte.app"
end
