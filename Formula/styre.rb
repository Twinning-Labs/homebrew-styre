class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.13.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.0/styre-v0.13.0-darwin-arm64.tar.gz"
      sha256 "77e22414fe9ebb43b5fbb2878f7a68fd106aa930c8f4f5c1098cb53096a48339"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.0/styre-v0.13.0-darwin-x64.tar.gz"
      sha256 "ebb32de02aae8ee07118e20ee67a45a94096044817d66ff56c3aaa0c01075e5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.0/styre-v0.13.0-linux-arm64.tar.gz"
      sha256 "b9d8bb2e219f499318d739845a9579cc793082011d2a9508488512c07997deb6"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.13.0/styre-v0.13.0-linux-x64.tar.gz"
      sha256 "6b9f1615653bfb739f9be7d5c3c01f9c2ff6a740adcda85af08573f403e83d2a"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
