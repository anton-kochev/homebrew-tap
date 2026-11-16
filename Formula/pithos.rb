class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.30.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.30.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "65cac6e2c0fa79c1bf5158ff89ab22a61281997aa8927524a86436ad111b5bd7"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
