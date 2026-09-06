class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.16.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.16.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "75dce5b51bae5e39f322b42b11b13e39c1adbc08cfa8612dcc6e3076b53dfce0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
