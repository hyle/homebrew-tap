class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "ca880bdbd76e11245af5c089d28af120296ccab0a693f91fcc540ed47349637d"
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
