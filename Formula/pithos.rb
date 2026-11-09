class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.28.4"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.28.4/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "d638c9afa236c7a466e812f7c846c1a77aa5d35840f6c2e07389441f6ee3bc9a"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
