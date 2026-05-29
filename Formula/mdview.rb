class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.0/mdview-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9f32eeec30912a5c9172c6c82c2449846b32018170670ba9f88753e7537a3165"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.0/mdview-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "2155ee298a0608ffa54469457ecbdd831961ac1e48991f445aedf2da793a5cc9"
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
