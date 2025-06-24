class Toka < Formula
  desc "AI-powered commit assistant"
  homepage "https://github.com/ademajagon/toka"
  url "https://github.com/ademajagon/toka-distribution/releases/download/v0.1.0/toka-darwin-arm64"
  sha256 "7e602fe6a89f2369d3d5c4c824282a0598197dee68ab4b5204a65f64cf4133be"
  version "0.1.0"

  def install
    bin.install "toka-darwin-arm64" => "toka"
  end

  test do
    assert_match "toka", shell_output("#{bin}/toka --version")
  end
end
