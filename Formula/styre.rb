class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.14.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.2/styre-v0.14.2-darwin-arm64.tar.gz"
      sha256 "78c1207d68a8b3c3451c42a217d243a154382fb61c9552a97978a769c22737a8"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.2/styre-v0.14.2-darwin-x64.tar.gz"
      sha256 "89132d60265bc6902188c21b9caf465d140ef6e4c71c55d4b7ff8dd0cb960b66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.2/styre-v0.14.2-linux-arm64.tar.gz"
      sha256 "3f10b0ea643327577b461d839897e6618a6b49844e4b5b01f8d7aa48be44c467"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.2/styre-v0.14.2-linux-x64.tar.gz"
      sha256 "f99836dec6d1b2b46753c299b69a6a4ec5aec01d8da6437c18bab3b68a6c3a82"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
