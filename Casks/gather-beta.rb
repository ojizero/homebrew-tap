cask "gather-beta" do
  arch arm: "-arm64"

  version "0.47.5"
  sha256 arm:   "05ccec9f5ad537870b595e8e3c7d3cccedcca4e5eaa1177465f1cb75f3ba6d08",
         intel: "5334c01fa4f0bd9c583924fe7f14ca013bef466153e18fc0b4afef65dc0ca033"

  url "https://downloads.gather.town/desktop-v2/GatherV2-#{version}#{arch}.dmg",
      verified: "downloads.gather.town/desktop-v2/"
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
  depends_on macos: :big_sur

  app "GatherV2.app"

  zap trash: [
    "~/Library/Application Support/GatherV2",
    "~/Library/Logs/GatherV2",
    "~/Library/Preferences/com.gather.GatherV2.plist",
    "~/Library/Saved Application State/com.gather.GatherV2.savedState",
  ]
end
