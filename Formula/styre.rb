class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.7.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.7.0/styre-v0.7.0-darwin-arm64.tar.gz"
      sha256 "fd66b23eee0a72506162ddf39e5b096351d2b7ff0f89f7504ef56ee091198954"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.7.0/styre-v0.7.0-darwin-x64.tar.gz"
      sha256 "a5b6d7ae951ffd766b43e13ab36b453d8ed8f4a6a3d577a4613e8e4a07b6f0b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.7.0/styre-v0.7.0-linux-arm64.tar.gz"
      sha256 "a90f76d9311f609b3383b6c5eccfe873eaf4219536c97fce09d504b0409f4746"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.7.0/styre-v0.7.0-linux-x64.tar.gz"
      sha256 "576cc79e5f6f2c2d739a68f11bf35ceef4664ea0f47d60ede91932b0b5639508"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
