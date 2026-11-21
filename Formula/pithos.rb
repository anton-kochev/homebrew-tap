class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.31.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.31.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "093641aefe924831e0dcf7ddeb4e07090b132981362cde411313b1e1dca902d2"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
