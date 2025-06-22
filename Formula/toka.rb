class Toka < Formula
  desc "AI-powered commit assistant"
  homepage "https://github.com/ademajagon/toka"
  url "https://github.com/ademajagon/toka-distribution/releases/download/v0.1.0/toka-darwin-arm64"
  sha256 "e5ecbf5db8359d4ff83011b41760d44b3557077cd924ab4fb1339302e16a496e"
  version "0.1.0"

  def install
    bin.install "toka-darwin-arm64" => "toka"
  end

  test do
    assert_match "toka", shell_output("#{bin}/toka --version")
  end
end
