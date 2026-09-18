class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.17.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.17.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "de3ee202c5656254c8015ffa6be70879ed86bb0aec1d4f1e81546ffa1d285048"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
