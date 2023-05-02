class Journalscript < Formula
  desc "Interactive command-line journaling tool"
  homepage "https://github.com/al3jandr0/journalscript"
  url "https://github.com/al3jandr0/journalscript/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "f77ba1f31a3a50596e21cdbd4bc53e2e2f5cce15dcbbb6d8610873cc1f945a53"
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
    assert_equal "journalscript 0.2.2", shell_output(" #{bin}/journal -v").strip
  end
end
