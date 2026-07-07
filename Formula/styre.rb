class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.5.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.5.0/styre-v0.5.0-darwin-arm64.tar.gz"
      sha256 "7f7aea9ec398c935a6e117f18cc0529f03e6f54cc0dd150ba3beec04480f70bc"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.5.0/styre-v0.5.0-darwin-x64.tar.gz"
      sha256 "a66ebff1ecbfd586760cb5e18e2ab4a182b5fd07469b230712c600f82bd3a710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.5.0/styre-v0.5.0-linux-arm64.tar.gz"
      sha256 "0bf1e5d0f5e6a1dd76354daff319be23c8c596f307eacfc3e6e2367eee4b7b22"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.5.0/styre-v0.5.0-linux-x64.tar.gz"
      sha256 "650675ad7ee50140570b9afc39605ce15ee27aa743c90cbe914fd30bf5807234"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
