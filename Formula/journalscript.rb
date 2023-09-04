class Journalscript < Formula
  desc "Interactive command-line journaling tool"
  homepage "https://github.com/al3jandr0/journalscript"
  url "https://github.com/al3jandr0/journalscript/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c69134ecfb1d6113f493febcdf7b2d725c5ee8785ca488e8af8b18d365b12056"
  license "MIT"
  depends_on "bash"
  depends_on "coreutils"

  def install
    bin.install "src/journal.sh" => "journal"
    prefix.install "README.md"
    prefix.install "LICENSE"
    man.mkpath
    man1.install "journalscript.1" => "journalscript.1"
  end

  test do
    assert_equal "journalscript 0.4.0", shell_output(" #{bin}/journal -v").strip
  end
end
