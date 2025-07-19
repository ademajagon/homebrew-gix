class Gix < Formula
  desc "Git-enhancing CLI powered by AI"
  homepage "https://github.com/ademajagon/gix"
  version "0.2.6"

  url "https://github.com/ademajagon/gix/releases/download/v0.2.6/gix-darwin-amd64"
  sha256 "1260b04cdda5accbb377d6813998b194d6493040a0b0fb9d756afdacc0c68da2"

  def install
    bin.install "gix-darwin-amd64" => "gix"
  end

  test do
    system "#{bin}/gix", "--help"
  end
end
