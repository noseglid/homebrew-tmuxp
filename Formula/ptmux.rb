class Ptmux < Formula
  desc "Quick tmux session launcher for project directories"
  homepage "https://github.com/noseglid/homebrew-ptmux"
  url "https://github.com/noseglid/homebrew-ptmux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 ""
  license "MIT"
  head "https://github.com/noseglid/homebrew-ptmux.git", branch: "main"

  depends_on "tmux"

  def install
    bin.install "ptmux.sh" => "ptmux"
    (share/"fish/vendor_completions.d").install "completions/ptmux.fish"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ptmux 2>&1", 1)
  end
end
