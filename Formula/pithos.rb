class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.29.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.29.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "94bebb13fcb8159761618a6fb569efe834d12c7774e0d55dcaba787737d365c0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
