class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.6.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.6.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "1d67a2f417a26c3f40f7ba6b6796d2a19e192fd2d0dd1b31a670735c57fa4f75"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
