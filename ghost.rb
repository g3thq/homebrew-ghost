# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc "Cloud Native shift-left scanner for containers and infrastructure as code"
  homepage "https://github.com/g3thq/ghost"
  version "0.6.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.6.9/ghost_0.6.9_MacOS-64bit.zip"
    sha256 "1ccda3d0f43c5bcddedfceedab2290b7dcb2b165f849330c93e3b962e851536c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/g3thq/ghost/releases/download/v0.6.9/ghost_0.6.9_MacOS-ARM64.zip"
    sha256 "6bd3e522ee81c8098b08e65fd6c6849573420d7094dc9a8e68119e9145e442ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.6.9/ghost_0.6.9_Linux-64bit.tar.gz"
    sha256 "118ffe34e873af730ce81640d29006af64c0f05db052a40c1a9854e72cc55753"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/g3thq/ghost/releases/download/v0.6.9/ghost_0.6.9_Linux-ARM64.tar.gz"
    sha256 "3d0bf1421dfe097c820a4c8a9e4e1ea58a5fc12e1847b0e4bb13f29563819a19"
  end

  def install
    bin.install "ghost"
  end

  test do
    system "#{bin}/program --version"
  end
end
