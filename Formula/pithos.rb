class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.20.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.20.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "56e4011c45bf8326adb8c9b91853fc197db1becea959110333e18696c45eef04"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
