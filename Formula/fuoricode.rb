class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a6453dce7b0a043fcfd4b708a24db07ccd406fd46f9f5a349239de517bd90914"
  license "MIT"

  def install
    system "make"
    bin.install "fuori" => "fuoricode"
    bin.install_symlink bin/"fuoricode" => "fuori"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/fuoricode --help")
  end
end
