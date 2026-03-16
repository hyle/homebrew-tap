class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "8afaab78ba0eec6d5de99d156f907ad59cdb7c956be4387eb7ea25af06e58c83"
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
