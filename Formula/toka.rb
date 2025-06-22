class Toka < Formula
  desc "AI-powered commit assistant"
  homepage "https://github.com/ademajagon/toka"
  url "https://github.com/ademajagon/toka-distribution/releases/download/v0.1.0/toka-darwin-arm64"
  sha256 "aa5fedb040f5a7f2385ceb59e3c0b929f073dca08557f85567eec08a0d06063a"
  version "0.1.0"

  def install
    bin.install "toka-darwin-arm64" => "toka"
  end

  test do
    assert_match "toka", shell_output("#{bin}/toka --version")
  end
end
