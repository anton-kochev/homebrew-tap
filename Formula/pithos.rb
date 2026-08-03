class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.11.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.11.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "14fa24e0e5c05330c0e5d6ac5d288d3d3a68b0639d10ed760eac5dd19307db0e"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
