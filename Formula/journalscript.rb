class Journalscript < Formula
  desc "Interactive command-line journaling tool"
  homepage "https://github.com/al3jandr0/journalscript"
  url "https://github.com/al3jandr0/journalscript/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3d464a65aae8b7eb12d6d647cfee1227535548425bef7e6d353b5cd6f8c091a6"
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
    assert_equal "journalscript 0.2.0", shell_output(" #{bin}/journal -v").strip
  end
end
