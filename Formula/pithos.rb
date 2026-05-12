class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.5.0"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.5.0/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "3284ac58c0f80d1c0283b61151e84538e2eeb5105b282e76c76962c790ed5ce5"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
