class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.18.2"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.18.2/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "362604bde3bd9538bc638c57b81898fb7a85114be7f2982956fb4261373136be"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
