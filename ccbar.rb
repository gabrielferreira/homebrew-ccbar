class Ccbar < Formula
  desc "Claude Code status bar for your terminal"
  homepage "https://github.com/gabrielferreira/ccbar"
  url "https://github.com/gabrielferreira/ccbar/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f70cf9f4f536449dda653a55167711bbf5fb99a3bdf529702e53a8c204295b39"
  license "MIT"

  def install
    bin.install "ccbar"
    bin.install "ccbar-header.sh"
    bin.install "ccbar-dashboard.sh"
    bin.install "ccbar-bar.sh"
    bin.install "ccbar-cmux.sh"
    bin.install "ccbar-panel.sh"
    bin.install "claude_status.sh"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/ccbar help 2>&1")
  end
end
