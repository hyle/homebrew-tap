class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "370aaa9f1a024d2c496ebb768a613ef8b307e5b02abbb1fdaa4e3fd6a1614f9c"
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
