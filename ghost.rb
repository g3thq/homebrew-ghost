# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc ""
  homepage "https://github.com/g3thq/ghost"
  version "0.4.11"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.11/ghost_0.4.11_MacOS-64bit.zip"
    sha256 "e7599c37b25745b6b2fc14a5fba936a415ae9cd7ee4e489384569e67794ef4ff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.11/ghost_0.4.11_MacOS-ARM64.zip"
    sha256 "a7c2be7a758316446b65220a0f385946651c2739ebf51ed921980333d689fc6e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.11/ghost_0.4.11_Linux-64bit.tar.gz"
    sha256 "53a2964de358676068e8fd482bf1218df62933b2af0fc187287a46f0b209ebab"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/g3thq/ghost/releases/download/v0.4.11/ghost_0.4.11_Linux-ARM64.tar.gz"
    sha256 "2147b1ce94c28ecfe2865bb51958ae3319a81e28d9f6bc187360a4bed98b6e07"
  end

  def install
    bin.install "ghost"
  end

  test do
    system "#{bin}/program --version"
  end
end
