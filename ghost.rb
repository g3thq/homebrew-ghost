# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc ""
  homepage "https://github.com/g3thq/ghost"
  version "0.4.9"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.9/ghost_0.4.9_MacOS-64bit.zip"
    sha256 "3e642280ac7ce73384c84f5bc393254e14b6675a53051898e7313278cf0b06a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.9/ghost_0.4.9_MacOS-ARM64.zip"
    sha256 "6da1aff6e74a28d6e8f69c4e4191c09ace3dd49b4868f5a38bc20ae67f956c49"
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
