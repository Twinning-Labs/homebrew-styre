class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.6.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.3/styre-v0.6.3-darwin-arm64.tar.gz"
      sha256 "9e62835e3a88472d13fe09c227cf6a906e41162c51dba22d4cb6aba2c4f9974e"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.3/styre-v0.6.3-darwin-x64.tar.gz"
      sha256 "8876ba2f8a2e2b9436b2689df4d7368ba8e5a5d7553c814ad64c9f876ce6a6c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.3/styre-v0.6.3-linux-arm64.tar.gz"
      sha256 "672c8d19a497f77f8bde4c12c559628215458c1dbf9d84f738fdd80e1166ab26"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.3/styre-v0.6.3-linux-x64.tar.gz"
      sha256 "6b848d192001588bd91357821f36e3798ab2a5c225301eb677de7210fb191d73"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
