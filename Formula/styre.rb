class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.6.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.0/styre-v0.6.0-darwin-arm64.tar.gz"
      sha256 "0ada28a5460110511ee688ed169557b0c4f96c869eab3d377ce7768987d83613"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.0/styre-v0.6.0-darwin-x64.tar.gz"
      sha256 "3709b432c040fe327447c9f558b711c643138809c05a2a651e95e14f42e681af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.0/styre-v0.6.0-linux-arm64.tar.gz"
      sha256 "30fe5fa4d68703989319a9a768ebecb25513bbd6a40fbf616b8a5c944ae291a9"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.0/styre-v0.6.0-linux-x64.tar.gz"
      sha256 "3c1f24ad448f15421f213e6471c49bd5f00c74fd11e61582c48f0fb370632150"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
