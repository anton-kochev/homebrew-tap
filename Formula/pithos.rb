class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.32.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.32.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "26087f090e2f16becb4aa5f8b8915800021249fd0a3b5f01d23f64dbe10ba72f"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
