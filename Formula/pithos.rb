class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.17.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.17.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "130de62910d1371bc683f2d97af8a913f4e2c084dbd6dd74698fdcda03500745"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
