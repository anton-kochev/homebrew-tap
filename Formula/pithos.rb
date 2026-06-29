class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.10.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.10.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "b3a54e48a1a70fa2d7ed8a5eec6b135711830aa06798252698499c7a8d2d4a27"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
