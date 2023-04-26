class Journalscript < Formula
  desc "Interactive command-line journaling tool"
  homepage "https://github.com/al3jandr0/journalscript"
  url "https://github.com/al3jandr0/journalscript/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "aaa18bc0c4b8d5a61b2d6ef942ff26f09308f13e67ec95179cfb0d657e5acb94"
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
    assert_equal "journalscript 0.1.0", shell_output(" #{bin}/journal -v").strip
  end
end
