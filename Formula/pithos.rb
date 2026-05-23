class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.7.2"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.7.2/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "72f639e5cd78b442af7ac0f1c8c739009d0142603f4424047c89174f94f80b6a"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
