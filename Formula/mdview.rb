class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.7/mdview-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "5bbc95bcab1b41a05f8bfbb3c68d062f2193b00b9f70456263cd3f8fd0c296d6"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.7/mdview-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "bcaef4b29b2175f1d9dcc3721d8d288c44d3ffdaa343a54f7f403a1e66c14e44"
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
