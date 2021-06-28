# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc ""
  homepage "https://github.com/g3thq/ghost"
  version "0.4.12"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.12/ghost_0.4.12_MacOS-64bit.zip"
    sha256 "7aa97307a3d2c84a7c3cbd82f182afc1fb69b015b47b1197457b7f5fd091ef74"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.12/ghost_0.4.12_MacOS-ARM64.zip"
    sha256 "2000ddfc5824b4d544392132efcdaabf91e9309efcae3565e38b35ea80f8a660"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.12/ghost_0.4.12_Linux-64bit.tar.gz"
    sha256 "0c0e4b1c30a958cbe1fa406879f07cb65feed8f45769cdeec2a2a6b26ee55b32s"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.12/ghost_0.4.12_Linux-ARM64.tar.gz"
    sha256 "45bb63a634d0465b5b8bd606ae02f419a44e92d3e0ea0e74a3fd2fc76bdb960d"
  end

  def install
    bin.install "ghost"
  end

  test do
    system "#{bin}/program --version"
  end
end
