class Pithos < Formula
  desc "Pithos launcher"
  homepage "https://github.com/anton-kochev/pithos"
  version "0.28.2"
  url "https://github.com/anton-kochev/pithos/releases/download/v0.28.2/pithos-aarch64-apple-darwin.tar.gz"
  sha256 "7f11faa41245d52ad3db74243773a88ee547376c49b64750bde976353a82d4df"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pithos"
  end

  test do
    system "#{bin}/pithos", "version"
  end
end
