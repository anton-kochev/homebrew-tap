class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.27.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.27.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "b8dbc3737d6ac1cf6b10b4f16d95b704a97f020ba38f1d0c60248d6187fdb60c"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
