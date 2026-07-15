class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.9.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.9.0/styre-v0.9.0-darwin-arm64.tar.gz"
      sha256 "92e0c32ad9a133d84ffeaa46e2918198059b9d74a79335059207b37f864eae86"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.9.0/styre-v0.9.0-darwin-x64.tar.gz"
      sha256 "a6eb3a71f825c664b8b91379a2a7e8374e651045366f24ba941644dea432add7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.9.0/styre-v0.9.0-linux-arm64.tar.gz"
      sha256 "da375a1c86fc37bc2745673e97bd7db9f690a7151ebd37ffed017fd91e48af62"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.9.0/styre-v0.9.0-linux-x64.tar.gz"
      sha256 "16f82a3edfcdaab023e7707953ee2596a3d72c9cb6004029318ce6dfedef1d00"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
