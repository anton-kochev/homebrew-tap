class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.14.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.14.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "e2649624aa2a800ed9edbb31e28f8d31ff1ca1d2c877c1dc17f3e38beec5c8ca"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
