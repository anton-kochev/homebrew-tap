class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.8.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.8.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "c6848f579fac41600faca6889e0a78db7f5f1a2ed2222177eda1dcafd41a25aa"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
