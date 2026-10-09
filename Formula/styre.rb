class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.14.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.1/styre-v0.14.1-darwin-arm64.tar.gz"
      sha256 "a90257f6fa4baf32983f443c75608fdfd710f14a0b865b032bbb4571d4e33847"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.1/styre-v0.14.1-darwin-x64.tar.gz"
      sha256 "2065446558df042bace495ec1d26eb335452d365509166bf88cecb5cae84e70b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.1/styre-v0.14.1-linux-arm64.tar.gz"
      sha256 "1c93902b454aa7ce682d8f8c9a1495f69b0a985b48d4d67cc2af0c4e1c94e23c"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.14.1/styre-v0.14.1-linux-x64.tar.gz"
      sha256 "a65a31fdaa80e3f7174f6dec6c409409e802ac17fcfce1efa15cb95eb4fdc090"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
