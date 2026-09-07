class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.16.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.16.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "d317db8e827b6a0addb0371f3a147b4f368f0a7dc3d6ea5ff8cc81f879a77c22"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
