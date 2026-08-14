class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.11.2"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.11.2/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "b30e8729979d26f93f0fda45cfff0fb83ac2127755f99a307b8b98634f60341a"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
