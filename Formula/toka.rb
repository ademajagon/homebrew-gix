class Toka < Formula
  desc "AI-powered commit assistant for the terminal"
  homepage "https://github.com/ademajagon/toka"
  url "https://github.com/ademajagon/toka/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7826957f791f557cb858f595070e718390e4e1f821f69ac81f416621e3881046"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end

  test do
    assert_match "toka", shell_output("#{bin}/toka --version")
  end
end
