class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.0/mdview-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc11207040348084ab3fa1809551e1d79e5aaacd3c391aa44594d59c236b345c"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.0/mdview-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c604d45d8271e5a7989d48089d9a433e5efb7ac0cbf73460616380857a88970c"
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
