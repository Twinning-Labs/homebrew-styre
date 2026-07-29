class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.13.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.1/styre-v0.13.1-darwin-arm64.tar.gz"
      sha256 "5f18229b7fd3ff4c255b09920401538a8c9a9619fbc0b2f2f4dff342da6d718b"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.1/styre-v0.13.1-darwin-x64.tar.gz"
      sha256 "7cbe8b7e36a59a7c35822c2d809127bd3801576dae824727e86de84ed9c24163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.1/styre-v0.13.1-linux-arm64.tar.gz"
      sha256 "454a3a73b1409962b4ef4898d449ee4661ded6c5c2d1348f62dacdafcde55659"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.1/styre-v0.13.1-linux-x64.tar.gz"
      sha256 "6aa3f318f5e801b16d494a53722b55ff24a7951b1c3c2c628c3ebdb9df484d48"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
