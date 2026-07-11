class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.6.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.2/styre-v0.6.2-darwin-arm64.tar.gz"
      sha256 "03f27177f7b159aa451a2f8a539c72b78f3bfc05c23f658c8dfa10ef4ce07bc9"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.2/styre-v0.6.2-darwin-x64.tar.gz"
      sha256 "66041a3ae1593339375b4d498330f010192a17ff092fe400a13c3b6a26e20f2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.2/styre-v0.6.2-linux-arm64.tar.gz"
      sha256 "490e22382f8087cac2e3bae391a53e4efafd98e4ffd583c6e87c07bdfd28384f"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.2/styre-v0.6.2-linux-x64.tar.gz"
      sha256 "42d9f64cf468fef88790ab87e3ec1fa7c78bf2c5a7d4422a4ac90b8b35ab4e50"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
