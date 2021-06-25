# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc ""
  homepage "https://github.com/g3thq/ghost"
  version "0.4.10"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.10/ghost_0.4.10_MacOS-64bit.zip"
    sha256 "cc2c63d9c8a5220da9cb04ed4af548f1f389c86888ef3a1e37d59f21c164c335"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.10/ghost_0.4.10_MacOS-ARM64.zip"
    sha256 "061c4aa6f2c7c3464b8970a3d17d0673accc5efb563a1729c5be279abc8b9c07"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.10/ghost_0.4.10_Linux-64bit.tar.gz"
    sha256 "b773fbf8ebbccc15eeaeb2b442f2dd0cf61b09a00f3a2edf46b28f7ecd2c0ca2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.10/ghost_0.4.10_Linux-ARM64.tar.gz"
    sha256 "71c64c7bad7b79e6a7a6b70e04b913ac792aefd15dd1520dd222b07e34a63ac6"
  end

  def install
    bin.install "ghost"
  end

  test do
    system "#{bin}/program --version"
  end
end
