cask "byte" do
  version "1.0.1"
  sha256 "55cfb5ecf372277545e3149521cbea1047dbce43130ae1c58aaa04c800399b3d"
  url "https://github.com/usebyte/byte/releases/download/v1.0.1/Byte_aarch64.dmg"

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
