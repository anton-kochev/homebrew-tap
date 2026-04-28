class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.3.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.3.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "ebfac0de327d4a0397863706b5e606528c27282a85f3df53b88ec99c9339c00e"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
