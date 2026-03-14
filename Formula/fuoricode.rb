class Fuoricode < Formula
  desc "Export a codebase to a single Markdown file"
  homepage "https://github.com/hyle/fuoricode"
  url "https://github.com/hyle/fuoricode/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "06cfbaf49919e757cfbfcc6a585f8bd19e524b03713e1c4c1394e9ee70866587"
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
