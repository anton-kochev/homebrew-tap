class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.21.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.21.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "db069b6765b2be306712e1ef6c07bc0bf6656e96c3fd608b62e7f62bb004f3bf"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
