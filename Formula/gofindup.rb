# This file was generated by GoReleaser. DO NOT EDIT.
class Gofindup < Formula
  desc "Simple find up utility"
  homepage "https://github.com/ojizer/gofindup"
  version "1.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ojizero/gofindup/releases/download/v1.1.3/gofindup_1.1.3_darwin_amd64.tar.gz"
    sha256 "b3bc68cf6c263c152a54b667a350bb48dba0ee99e33a8da4f4bfbcfbef02c9b9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ojizero/gofindup/releases/download/v1.1.3/gofindup_1.1.3_linux_amd64.tar.gz"
      sha256 "48141a4d7207a38848a87b800372adc88de79c5668ce709750446651e8026e41"
    end
  end

  def install
    bin.install "gofindup"
  end
end
