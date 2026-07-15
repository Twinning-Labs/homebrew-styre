class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.8.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.2/styre-v0.8.2-darwin-arm64.tar.gz"
      sha256 "7793c3136337d5fd68078747a36e3fe6539fb442e73c344de8fd368134f5440e"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.2/styre-v0.8.2-darwin-x64.tar.gz"
      sha256 "9eb2984d3dd3fb0304a8cb6ce29150366df216ba08aca65a2ccc2f7b6cb179a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.2/styre-v0.8.2-linux-arm64.tar.gz"
      sha256 "9e317c76dd91ae191e1857cc6ab71cffc5c4f754b11cc97ff4a1b5d975826bef"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.2/styre-v0.8.2-linux-x64.tar.gz"
      sha256 "2220ba71599fdeda4e69fbe7da8f9ca6359272117a7ec536137b8c87222128f2"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
