class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.29.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.29.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "c6b40267e4c9e1c20edb6a48133faed01888e16ef2757259aec3ffd91c306395"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
