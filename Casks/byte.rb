cask "byte" do
  version "1.00"
  sha256 "c90ccad08ea8a19a94c82aee2286aeaf52c85b20b6b64513836fec88838322d6"
  url "https://github.com/usebyte/byte/releases/download/v1.00/Byte_aarch64.dmg"

  name "Byte"
  desc "AI assistant for your desktop"
  homepage "https://github.com/usebyte/byte"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  no_quarantine true

  app "Byte.app"
end
