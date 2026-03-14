class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "320398e5a43ac91da1966a15986cb9728e8a3a34e427f0c4e1cce7e9b8abf691"
  license "MIT"

  def install
    system "make", "VERSION=#{version}"
    bin.install "fuori" => "fuoricode"
    bin.install_symlink bin/"fuoricode" => "fuori"
  end
  
  test do
    assert_match version.to_s, shell_output("#{bin}/fuoricode --version")
  end
end
