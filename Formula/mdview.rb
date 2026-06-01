class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.5/mdview-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "0083e1342e4cd57fcc7bc35c65d8a6a567ea14c24abe8ad8c253786de53ba172"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.5/mdview-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "b692891d8791d818bf4e3609b5d7328eec368f5cdb89f8b8d25caee2db68a83d"
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
