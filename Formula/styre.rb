class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.14.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.3/styre-v0.14.3-darwin-arm64.tar.gz"
      sha256 "6102f49e34e9cf508354ede15cb4ff990e95cb6b11755e811c232b8a52fdf942"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.3/styre-v0.14.3-darwin-x64.tar.gz"
      sha256 "5ed88f86bbdabc439053c7219244f757046daeac6949ccbfa230f4a84ae9134a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.3/styre-v0.14.3-linux-arm64.tar.gz"
      sha256 "667588fd5c531a9f4fb38152323b9b6b406b910229e66b1744cb9f397d74d8a5"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.3/styre-v0.14.3-linux-x64.tar.gz"
      sha256 "10789927274580e157da100941511af76c02bf30b57137d44b14169a41892d88"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
