# typed: false
# frozen_string_literal: true

class Ghost < Formula
  desc "Cloud Native shift-left scanner for containers and infrastructure as code"
  homepage "https://github.com/g3thq/ghost"
  version "0.5.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.5.1/ghost_0.5.1_MacOS-64bit.zip"
    sha256 "46087d35815ab96d11635d6ba7df239356a20b4fc8aa1cf6f69fd2870bad27ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/g3thq/ghost/releases/download/v0.5.1/ghost_0.5.1_MacOS-ARM64.zip"
    sha256 "abdf61c514a4d882b03a35760c50256c5851e0784773a0aa196aafbd0897719b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/g3thq/ghost/releases/download/v0.5.1/ghost_0.5.1_Linux-64bit.tar.gz"
    sha256 "9fdf81f1d43085ea24a5abc364f0a42a6f0fb357d3e5e2b024d00f729ac13bf5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/g3thq/ghost/releases/download/v0.5.1/ghost_0.5.1_Linux-ARM64.tar.gz"
    sha256 "37b7cd0215582caf66f337f70a2dc4cd41fac961fba12921a701735fd0c1e3c9"
  end

  def install
    bin.install "ghost"
  end

  test do
    system "#{bin}/program --version"
  end
end
