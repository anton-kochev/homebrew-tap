class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.8.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.8.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "ea5bd46247a2b9fefe87756de0d0c271ca310f3f3351ae9ac81e5329e3512156"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
