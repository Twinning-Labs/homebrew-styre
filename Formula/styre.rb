class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.0/styre-v0.1.0-darwin-arm64.tar.gz"
      sha256 "4f993062430cf614d2f1a09874d143105ef94d209f7d89daf09b1d7048c83d77"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.0/styre-v0.1.0-darwin-x64.tar.gz"
      sha256 "c279a5fd538466dd924f28c96c379e1bb35dc5fe5ab01476e8c6c7af1fdbcc20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.0/styre-v0.1.0-linux-arm64.tar.gz"
      sha256 "3b18368263b56e442be54b3d25fd48a0375e150f11d7cec618137f7527cdeff9"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.1.0/styre-v0.1.0-linux-x64.tar.gz"
      sha256 "e77757b1cb9f5349c6868bd2e29c206b56217c86b0e68a0fd7e40a99ad01e4bb"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
