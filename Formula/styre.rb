class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.2/styre-v0.1.2-darwin-arm64.tar.gz"
      sha256 "cc13c8e61e31190e14ca609cc1d1ba2154e7e5b56840ffc82fe1b3199006de42"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.2/styre-v0.1.2-darwin-x64.tar.gz"
      sha256 "d1b3e56ecb4b3aaf625cba9c422b69927c636bd473620aff8b8eaa78b98efcf8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.2/styre-v0.1.2-linux-arm64.tar.gz"
      sha256 "c88229cae4db1b2d00e1156d9387a080e1cdff90e9e26fe0ec22d9b85071a00f"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.2/styre-v0.1.2-linux-x64.tar.gz"
      sha256 "34c86ccef71e85fcfe2e310b53edf824b67ff56eddfa8a7f0601bf80db6e41a8"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
