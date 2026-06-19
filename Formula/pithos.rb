class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.9.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.9.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "3d60d37d130df772bd85afa5832bb81a368677f65b3e55644591b6bf998ce450"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
