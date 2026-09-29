class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.18.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.18.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "05a81b39fb97c57c1b5f5bf612c164fd01da89dfa7ebf488049edd42bea74342"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
