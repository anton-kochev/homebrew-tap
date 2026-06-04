class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.7.4"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.7.4/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "2245b35ad46cdf61c738e8f8f7b2226c67d431ac3f1da6c2d8ae91a7aa59acec"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
