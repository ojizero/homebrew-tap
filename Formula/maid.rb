class Maid < Formula
  desc "Free disk space by cleaning caches and worktrees via each tool's own command"
  homepage "https://github.com/ojizero/maid"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ojizero/maid/releases/download/v0.0.2/maid-aarch64-apple-darwin.tar.gz"
      sha256 "cfc0852b7193490b1af047e85aeb3eae25eb7adba63d9f821d74c9bf494c274b"
    end
    on_intel do
      url "https://github.com/ojizero/maid/releases/download/v0.0.2/maid-x86_64-apple-darwin.tar.gz"
      sha256 "481f3da7af4c7c937cd2945c36269a7f8c56c9c129061c3ed0e60fac14c77055"
    end
  end

  # The Linux binaries are static musl builds.
  on_linux do
    on_arm do
      url "https://github.com/ojizero/maid/releases/download/v0.0.2/maid-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0129e87a00e3ad322d9e3c9a8b7368da212f1f36cceeb5c7b7a8b85f749b02ed"
    end
    on_intel do
      url "https://github.com/ojizero/maid/releases/download/v0.0.2/maid-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d2ff04ac9b5c96b5f9374313bfa3d05236e981c7b0ae8eec057d65bdcfdd447"
    end
  end

  def install
    bin.install "maid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maid --version")
  end
end
