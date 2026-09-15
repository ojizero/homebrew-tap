cask "block-buzz" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.26"
  sha256 arm:   "abc60e0e44c9bc9b0ce7d668651a955a87cf95390f66bb9b71d36f9c0e5c25a3",
         intel: "fa7c94c41a535295535a772fc5751fe478deea8caae3fe19268c28f7153d07d1"

  url "https://github.com/block/buzz/releases/download/v#{version}/Buzz_#{version}_#{arch}.dmg"
  name "Buzz"
  desc "Workspace for humans and AI agents"
  homepage "https://github.com/block/buzz"

  conflicts_with cask: "buzz"
  depends_on macos: :big_sur

  app "Buzz.app"

  uninstall quit: "xyz.block.buzz.app"

  zap trash: [
        "~/.local/bin/buzz",
        "~/Library/Application Support/xyz.block.buzz.app",
        "~/Library/Caches/xyz.block.buzz.app",
        "~/Library/HTTPStorages/xyz.block.buzz.app",
        "~/Library/Preferences/xyz.block.buzz.app.plist",
        "~/Library/Saved Application State/xyz.block.buzz.app.savedState",
        "~/Library/WebKit/xyz.block.buzz.app",
      ],
      rmdir: "~/.buzz"
end
