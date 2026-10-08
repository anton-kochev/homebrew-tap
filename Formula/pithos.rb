class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.24.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.24.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "bf9110c3c6c26a9a0e619469ecb4c381d469b20257381971227fb448707d5239"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
