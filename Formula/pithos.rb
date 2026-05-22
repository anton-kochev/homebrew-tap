class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.7.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.7.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "05c5f98ba70e0669651ac6f95def97e262f5bf6400b387289266c35babf02eb5"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
