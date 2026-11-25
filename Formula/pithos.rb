class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.33.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.33.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "12e9b70f2efdb7e7418a78ce03f4b3ceafde0c082838e9e3c9f6c4013873ef68"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
