class Mdview < Formula
  desc "Beautiful read-only terminal markdown reader"
  homepage "https://github.com/harrystamatoukos/mdview"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.1/mdview-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "f8739395e163a25a11f2b1f0faeef00f2991abe7f6329308765f0d2debfae17a"
    end
    on_intel do
      url "https://github.com/harrystamatoukos/mdview/releases/download/v0.1.1/mdview-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "1c71cdc084f4143e45ba72b3ac324ed349dffc15dfd8d8a732bf5ab0389cd750"
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
