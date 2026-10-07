class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.22.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.22.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "3d6fefa673ce4fde6f88366ab0ecdfce096d1a39e79c760d11a42e881df14ce4"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
