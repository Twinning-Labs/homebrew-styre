class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.12.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.12.0/styre-v0.12.0-darwin-arm64.tar.gz"
      sha256 "240b676b803aa32cc26c9eed76d8014462f1ad080e34f6e320b41796e2b34237"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.12.0/styre-v0.12.0-darwin-x64.tar.gz"
      sha256 "6f83ddef50b89d69d39d14304deb2661f00b3d7d04b655acfd691abc47285810"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.12.0/styre-v0.12.0-linux-arm64.tar.gz"
      sha256 "e36eafd3baa5905b6f7e934d90bd545488de7cd18c0f7f42ec55d8dc60972532"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.12.0/styre-v0.12.0-linux-x64.tar.gz"
      sha256 "ed027525d5fac586c3cc5ccc6344efd28bcdcf4b2fc78ebe3fce41598bad1b78"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
