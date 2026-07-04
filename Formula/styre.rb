class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.3.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.3.0/styre-v0.3.0-darwin-arm64.tar.gz"
      sha256 "e15c175ce27bb1f7d73da900e325e32bb7396581730f39cd6a1b9875f3fedbae"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.3.0/styre-v0.3.0-darwin-x64.tar.gz"
      sha256 "b856e08222a396effe9ad96bb76d1e9718a36625329d2bfb89c7775266b084af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.3.0/styre-v0.3.0-linux-arm64.tar.gz"
      sha256 "64f74f1314be8cf0299e196242a9a136c88c40805526c1a752128bf45cdd9ad3"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.3.0/styre-v0.3.0-linux-x64.tar.gz"
      sha256 "67af0dc8e947c2ad83fbfb845247e0f9ddd783dace0e325aff0767b76bb7c16b"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
