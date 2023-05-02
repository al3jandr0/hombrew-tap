class Journalscript < Formula
  desc "Interactive command-line journaling tool"
  homepage "https://github.com/al3jandr0/journalscript"
  url "https://api.github.com/repos/al3jandr0/journalscript/tarball/v0.2.3"
  sha256 "dd0fb7eacd8dfecef5e8c6ff389b7c8648d6867dfc4064b97b601c5e21f56acd"
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
    assert_equal "journalscript 0.2.3", shell_output(" #{bin}/journal -v").strip
  end
end
