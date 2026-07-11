class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.6.4"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.4/styre-v0.6.4-darwin-arm64.tar.gz"
      sha256 "16334089da81e8af4e656a5d190eab3dde0c87cea36951dd34dccce1ab89bea8"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.4/styre-v0.6.4-darwin-x64.tar.gz"
      sha256 "3b9d5d9b747902832c2d9e14940fe977328155e3f758a93cfa353e7d3d647664"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.4/styre-v0.6.4-linux-arm64.tar.gz"
      sha256 "11fecf0ea1bbefbecc690e6680e7ffc6459a038969a6b8abd659e031f3457ac3"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.4/styre-v0.6.4-linux-x64.tar.gz"
      sha256 "8fdc296f65bb51df2c552b7eec18515a67bd2b094dfabe5841f8b65e6a5cf52d"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
