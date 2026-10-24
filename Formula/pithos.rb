class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.26.3"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.26.3/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "e8ce92457999f5aaecc55256e3bf1aac92c9dcd559ed76529fdd2326c0ac4a29"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
