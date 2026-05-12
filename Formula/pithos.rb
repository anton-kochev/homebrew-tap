class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.5.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.5.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "93add3eca9bb7f649f637ea1a7b6eaea097c4906bb3ce6c402a375810c7f7f5e"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
