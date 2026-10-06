class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.20.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.20.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "4bcbd7ba2f81600ca7cbb29af1f7401fcce1d346a2c5014a4f195703c1c33dcc"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
