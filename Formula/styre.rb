class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.11.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.11.0/styre-v0.11.0-darwin-arm64.tar.gz"
      sha256 "60e85559cd03960e9292e4ed02b8a36d7c9015c2a4b7a661102b1bb69b566643"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.11.0/styre-v0.11.0-darwin-x64.tar.gz"
      sha256 "c53d62682532c741139fc342311602ed3612792d3b15a6d868dad3c542c4d447"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.11.0/styre-v0.11.0-linux-arm64.tar.gz"
      sha256 "827f70232c2a116102976593d7a88eaba338d0276bdc99645566eb0a0bbf6747"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.11.0/styre-v0.11.0-linux-x64.tar.gz"
      sha256 "ed762717de9068926557117818eb517a1df64e69c6c4d90f386b8638a47bd15c"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
