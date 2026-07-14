class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.8.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.1/styre-v0.8.1-darwin-arm64.tar.gz"
      sha256 "ee7e395f134b281f064d80243d8154ebd8f75742103b3f2952b246aa3d4d4b13"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.1/styre-v0.8.1-darwin-x64.tar.gz"
      sha256 "1202666c8f6a4549c99153af15ec35bf728f2b2405e0d77690bc572d20cc9ee9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.1/styre-v0.8.1-linux-arm64.tar.gz"
      sha256 "5477b9db06a7a62b5ad0bfe8627584d948fcd88784a560f659ecafa7f713fe12"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.8.1/styre-v0.8.1-linux-x64.tar.gz"
      sha256 "bf2a6767ebf3597326a38b9ed664b83e4652eafabf542fabef2ad644b3f8cbd9"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
