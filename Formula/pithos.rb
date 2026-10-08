class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.23.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.23.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "0c4f201815c3349daa6f71354f14df015a558e5c3b6dda0b1b31ed7dcd120d52"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
