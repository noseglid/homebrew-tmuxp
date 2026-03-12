class Tmuxp < Formula
  desc "Quick tmux session launcher for project directories"
  homepage "https://github.com/noseglid/tmux-project"
  url "https://github.com/noseglid/tmux-project/archive/refs/tags/v0.1.0.tar.gz"
  sha256 ""
  license "MIT"
  head "https://github.com/noseglid/tmux-project.git", branch: "main"

  depends_on "tmux"

  def install
    bin.install "tmuxp.sh" => "tmuxp"
    (share/"fish/vendor_completions.d").install "completions/tmuxp.fish"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/tmuxp 2>&1", 1)
  end
end
