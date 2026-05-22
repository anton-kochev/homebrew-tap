class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.7.1"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.7.1/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "436719db67a3c7b786c9a344b3a4dcf64619867b64e55abb0471601a9200ce26"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
