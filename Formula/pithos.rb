class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.15.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.15.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "ae173da402a17abcbfa0c3a2d8a5aaa9f2de911710bf1885625ec5804247c1a7"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
