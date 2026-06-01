class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.7.3"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.7.3/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "cf89a2638b94ffba610862b2733b43d2321bbf4ca631f92ec25d798d5a2e6de7"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
