class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.6/mdview-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "35a9e1936a06eac6d901b28c397c642eb60575c0f517fc63e9d10bae814262f6"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.6/mdview-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "6cbb05735968fe49d93783855b46e18ab0fb52fa556a0e8a2c02f21fd99b32df"
    end
  end

  def install
    bin.install "mdview"
  end

  def caveats
    <<~EOS
      mdview's default graphical reader needs a graphics-capable terminal
      (Ghostty, Kitty, iTerm2, or WezTerm). On any other terminal, use the
      classic text reader:

        mdview --tui <file>
    EOS
  end

  test do
    assert_match "mdview #{version}", shell_output("#{bin}/mdview --version")
  end
end
