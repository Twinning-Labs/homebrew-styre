class Styre < Formula
  desc "Open-source autonomous-SDLC execution core"
  homepage "https://github.com/Twinning-Labs/styre"
  version "0.6.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.1/styre-v0.6.1-darwin-arm64.tar.gz"
      sha256 "7544950e0f77d93fb9ec5675d9ef04cae29b84f644b00fa78a2f1dae5e08ea98"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.1/styre-v0.6.1-darwin-x64.tar.gz"
      sha256 "cb2108617397d1ef597b4544d3def9dfff81b6232a0eafa344da23630c772d34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.1/styre-v0.6.1-linux-arm64.tar.gz"
      sha256 "4e7503bcd9cd6f088c1a12cb71fa818f0938b0efe1b247c6d18f5a6850ceec03"
    end
    on_intel do
      url "https://github.com/Twinning-Labs/styre/releases/download/v0.6.1/styre-v0.6.1-linux-x64.tar.gz"
      sha256 "377c588334aa8386e83e76448869a98458a6fc20014e5023d7a49c69f46c996c"
    end
  end

  def install
    bin.install "styre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/styre --version")
  end
end
