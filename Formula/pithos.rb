class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.26.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.26.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "f49a2b8564e31daba97405bb903fbf4ef0e53bf08a1862042792478daffaca63"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
