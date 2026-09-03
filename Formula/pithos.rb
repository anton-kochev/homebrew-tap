class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.13.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.13.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "bce54940f01adb61fadcc656afebad44e437a6acd386ce2abb1497c959566387"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
