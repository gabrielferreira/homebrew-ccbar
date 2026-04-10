class Ccbar < Formula
  desc "Claude Code status bar for your terminal"
  homepage "https://github.com/gabrielferreira/ccbar"
  url "https://github.com/gabrielferreira/ccbar/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "a684da087d0bec78e124b398d2d0b6d8d7f6a1e613fd73333e918e0b33f494a3"
  license "MIT"

  def install
    bin.install "ccbar"
    bin.install "ccbar-header.sh"
    bin.install "ccbar-dashboard.sh"
    bin.install "ccbar-bar.sh"
    bin.install "ccbar-cmux.sh"
    bin.install "ccbar-panel.sh"
    bin.install "claude_status.sh"
    bin.install "ccbar_parse.py"
  end

  test do
    assert_match "1.2.1", shell_output("#{bin}/ccbar help 2>&1")
  end
end
