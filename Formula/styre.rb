class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.8.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.0/styre-v0.8.0-darwin-arm64.tar.gz"
      sha256 "9f318d05e276eeae4dd62b9991ed5b852b2bc6da45578cee40295b8cf0e7f68e"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.0/styre-v0.8.0-darwin-x64.tar.gz"
      sha256 "591598701a969061405067ca71633b09e40d560cfb99d266ac18b34648080a44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.0/styre-v0.8.0-linux-arm64.tar.gz"
      sha256 "8843663abbdb55e80fc4890b39caa0f7cae9223f31bdc0afcfc64a024da8e93f"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.0/styre-v0.8.0-linux-x64.tar.gz"
      sha256 "38cdb776f852406d967604d36b16696c7551dbf6882eccedd4a0e71522d9eb1c"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
