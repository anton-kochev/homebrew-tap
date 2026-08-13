class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.11.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.11.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "5c9299449eb2e93b0fe1729e56dd763e795c49824265231facd40fdc811b33ec"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
