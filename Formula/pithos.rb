class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.12.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.12.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "8f8269e70432cd2b35550bacfd92b2049af3276be0a6c7badb0827729f5eb443"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
