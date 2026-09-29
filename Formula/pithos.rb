class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.18.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.18.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "736263242137ce395aa44ba10b16d2b26e20f41bd2aa7d5b93bcb9d7daf12c35"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
