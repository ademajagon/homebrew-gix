class Toka < Formula
  desc "AI-powered commit assistant for the terminal"
  homepage "https://github.com/ademajagon/toka"
  url "https://github.com/ademajagon/toka/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end

  test do
    assert_match "toka", shell_output("#{bin}/toka --version")
  end
end
