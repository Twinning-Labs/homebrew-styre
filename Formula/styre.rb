class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.10.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.10.0/styre-v0.10.0-darwin-arm64.tar.gz"
      sha256 "c6ab71d83c34ac82fde770d0645ef2984e50cfc193040dd5894923ae24e87713"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.10.0/styre-v0.10.0-darwin-x64.tar.gz"
      sha256 "c371505fd5caf87ab45473079e19a2328da9bf845a86f13844164e421b6debd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.10.0/styre-v0.10.0-linux-arm64.tar.gz"
      sha256 "60859e9998c18c00967e30a654beecb4f9663fd73341047ffa5b9fdc1d1a6f0b"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.10.0/styre-v0.10.0-linux-x64.tar.gz"
      sha256 "4f3d873b93bd107ca6fc24326a18d00cccda22daa1780d008ccfa6499ca8e8af"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
