class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.1.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.1/styre-v0.1.1-darwin-arm64.tar.gz"
      sha256 "5f316cb7c19d03253cc2d88451fa1bd93de6fe7b49a8a772a3cb7670270c9017"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.1/styre-v0.1.1-darwin-x64.tar.gz"
      sha256 "fb0157870a8517526e510a9d3579857014cd1e1db0803fc000c67da78c6d5cfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.1/styre-v0.1.1-linux-arm64.tar.gz"
      sha256 "76617b77894239ab9a54bb6191d9a2edb0e7ef7cc8ae52ae60ef5a9bccfac473"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.1/styre-v0.1.1-linux-x64.tar.gz"
      sha256 "f48280e544276e1fa3961ec1ac4bcb7abfe04f2171087815ab9ac976047d728f"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
