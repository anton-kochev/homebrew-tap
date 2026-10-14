class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.26.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.26.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "31049f86ed80a3a7a4d651fa4f61e5469f6c1e355acbb3eb29454ba022cc553c"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
