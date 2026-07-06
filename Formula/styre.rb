class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.4.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.4.0/styre-v0.4.0-darwin-arm64.tar.gz"
      sha256 "6d73ddc93b70d8d1c06e7746baeac212910c2e8459a39f574ef9960694ed50a7"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.4.0/styre-v0.4.0-darwin-x64.tar.gz"
      sha256 "06aed1005bc2a8b936d33ac19c42659d77e89d2cc5311b493899cb978c881ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.4.0/styre-v0.4.0-linux-arm64.tar.gz"
      sha256 "a75d1ea84047da01862bec0e7cbe9344bf1ff28b34602de11373fbfa9219621a"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.4.0/styre-v0.4.0-linux-x64.tar.gz"
      sha256 "4554b18c36ec03eec180de61fa0d59a5234ddfa25e10225e0e2c80f44720b42d"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
