class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.12.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.12.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "4f63dc5ef8dfd86c5c5182be69d9b189b555a530101c16d6b2a42e7a1f862d7f"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
