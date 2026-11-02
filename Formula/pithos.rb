class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.28.3"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.28.3/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "97860c907b5b73ace84a1f5eb6323cd584d2607cf5e2299b40ede039091d89ba"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
