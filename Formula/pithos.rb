class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.19.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.19.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "e0519cea56687152cec348d3561023bfa4e09abefc6be1a008e60cb7f0cff730"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
