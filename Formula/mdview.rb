class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.2/mdview-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "08737a281c79eb0201d6c076db72b12542d8ac9163e9d06af8a0c4c77019b0f3"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.2/mdview-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "34abee795b77ce3b6957f65aec1cf762b62ffdb994085f1dc1a8d04f65ed4083"
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
