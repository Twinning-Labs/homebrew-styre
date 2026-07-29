class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.13.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.2/styre-v0.13.2-darwin-arm64.tar.gz"
      sha256 "76102c70ad6c3077a8a82d44dfe6dfcc14cd5d8bbda01c6bb5a9e7cb561e7654"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.2/styre-v0.13.2-darwin-x64.tar.gz"
      sha256 "974d32ae82a92e0c452b82b517d378186e7745d47f298626525d231e1c9ebc7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.2/styre-v0.13.2-linux-arm64.tar.gz"
      sha256 "41ce784428f5a36abe66da1ee8712bd7a29c58a95282ef91ad213018c1679c34"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.2/styre-v0.13.2-linux-x64.tar.gz"
      sha256 "319cdae4f91444c693234de3bba8c626acbc3e4308cbf4579674be9827f11e94"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
