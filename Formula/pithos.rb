class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.26.2"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.26.2/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "8f04fbc27399468870b6ffee4c27b5db33df7f97db007e08b56550d250860644"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
