class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.4.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.4.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "b880a9893317f659eec013c7676a0799927cc9245f079af8df9dc3cb31680243"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
