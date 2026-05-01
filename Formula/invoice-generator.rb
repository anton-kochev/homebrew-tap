class InvoiceGenerator < Formula
  desc "Invoice generator CLI"
  homepage "https://github.com/anton-kochev/invoice-generator"
  version "0.3.0"
  url "https://github.com/anton-kochev/invoice-generator/releases/download/v0.3.0/invoice-generator-v0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "40f4dc5df82866cce9d348c4ea63a2fc57d063454908dee7df8031f5a5cd0bcf"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "invoice-generator"
  end

  test do
    system "#{bin}/invoice-generator", "--version"
  end
end
