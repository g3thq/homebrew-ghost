# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc ""
  homepage "https://github.com/g3thq/ghost"
  version "0.4.9"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.9/ghost_0.4.9_MacOS-64bit.zip"
    sha256 "005ff749b001a16042a1a1c50e1582bc1866b3b8226e8ebeef29e91a19c9e0a3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.9/ghost_0.4.9_Linux-64bit.tar.gz"
    sha256 "5401abfe23344edccc620e63dda82be1502042115162badf36ae6d77558e7edd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.9/ghost_0.4.9_Linux-ARM64.tar.gz"
    sha256 "3c252aeaf92393b88e24eb58876107d43c9e795b2daaf3880581ba909c9a72c5"
  end

  def install
    bin.install "ghost"
  end

  test do
    system "#{bin}/program --version"
  end
end
