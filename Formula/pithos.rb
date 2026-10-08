class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.25.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.25.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "03127a90c948aab09feefcd07cf14cef45e69c0413f3657cd9ec45d90310a88c"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
