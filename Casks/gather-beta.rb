cask "gather-beta" do
  version "0.54.0"
  sha256 "b3ad6c3d5a2a76f87fbfcb6b2ee82ae7b6d8c1fc32ecc3f8c3a9cd5c63497bc6"

  url "https://downloads.gather.town/desktop-v2/GatherV2-#{version}-universal.dmg"
  name "Gather Town (Beta)"
  desc "Virtual video-calling space (v2 beta)"
  homepage "https://gather.town/"

  livecheck do
    url "https://api.v2.gather.town/api/v2/releases/latest/macos/v2"
    strategy :header_match
    regex(/GatherV2[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "gather"
  depends_on macos: :ventura

  app "GatherV2.app"

  zap trash: [
    "~/Library/Application Support/GatherV2",
    "~/Library/Logs/GatherV2",
    "~/Library/Preferences/com.gather.GatherV2.plist",
    "~/Library/Saved Application State/com.gather.GatherV2.savedState",
  ]
end
