class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.14.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.0/styre-v0.14.0-darwin-arm64.tar.gz"
      sha256 "8438f92df0885d89c559b52b8795b2ef7a22edd9fbb4b00c4f9d8f6eb00940c2"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.0/styre-v0.14.0-darwin-x64.tar.gz"
      sha256 "aba3392196b6a091b7c10d66cc355d6e969d1cbd9cfe954df124b6624f77dccc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.0/styre-v0.14.0-linux-arm64.tar.gz"
      sha256 "6370deb4347eba93dd6133d3f5066d68bd0c4be037ee3d666efb904c9e3e8e9e"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.0/styre-v0.14.0-linux-x64.tar.gz"
      sha256 "514982b087c566bb8b6d805c5d406027f85807d040d63e2b5adb40427b5e86a4"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
