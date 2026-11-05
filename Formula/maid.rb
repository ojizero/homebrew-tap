class Maid < Formula
  desc "Free disk space by cleaning caches and worktrees via each tool's own command"
  homepage "https://github.com/ojizero/maid"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ojizero/maid/releases/download/v0.0.3/maid-aarch64-apple-darwin.tar.gz"
      sha256 "7470d16bf36f5c94445ab23a053e59c4ba5be4ee3e095a9cef272526c81997d9"
    end
    on_intel do
      url "https://github.com/ojizero/maid/releases/download/v0.0.3/maid-x86_64-apple-darwin.tar.gz"
      sha256 "fb5b88c5af8071475a724dd0a3b52fa4e392b6ecdb3e0d8b137343b7ecef41a7"
    end
  end

  # The Linux binaries are static musl builds.
  on_linux do
    on_arm do
      url "https://github.com/ojizero/maid/releases/download/v0.0.3/maid-aarch64-unknown-linux-musl.tar.gz"
      sha256 "78f21a58b5e14a6b4972ec661bdf484842c71f0a6fd73bd21ec05835ae5e142b"
    end
    on_intel do
      url "https://github.com/ojizero/maid/releases/download/v0.0.3/maid-x86_64-unknown-linux-musl.tar.gz"
      sha256 "481ade2ef39ca0074d53b25965319dd49dddaaf47ad608072a13c2d0d456f70c"
    end
  end

  def install
    bin.install "maid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maid --version")
  end
end
