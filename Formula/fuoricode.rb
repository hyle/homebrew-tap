class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "47c80940e63fc218ff89abe7c65b92e3452ad0bb8ee436b933e96117fd580fb7"
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
