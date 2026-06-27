class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.2.0/styre-v0.2.0-darwin-arm64.tar.gz"
      sha256 "27391c20665ca477ed69e4aac70d4f0cfd92d238456d04ea4f165377a5eeb178"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.2.0/styre-v0.2.0-darwin-x64.tar.gz"
      sha256 "ea453c788d5cfeab9d499671c4700981e2179f530bce6e6c5c37ac601d064c54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.2.0/styre-v0.2.0-linux-arm64.tar.gz"
      sha256 "b7e2981d5c6850a5a66c9863d3007dee483163930b62d77dfd2c2f78ef2e818b"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.2.0/styre-v0.2.0-linux-x64.tar.gz"
      sha256 "88b3ab5ed1a3f364b720d3e4c8cf3d11ae32ce3ae3e59e6cc765605d56f6d83b"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
