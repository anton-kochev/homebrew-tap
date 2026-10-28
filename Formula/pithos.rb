class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.28.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.28.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "e22ddb61e5a68cacdf4389077a73b8859d9a98facfce6abd5ead8bd6492065b0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
