class InvoiceGenerator < Formula
  desc "Invoice generator CLI"
  homepage "https://github.com/anton-kochev/invoice-generator"
  version "0.4.0"
  url "https://github.com/anton-kochev/invoice-generator/releases/download/v0.4.0/invoice-generator-v0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "776a3a78529a270c80c734ad329d502b3bbbb865bbdd3925eda3b8dcc06c8ebe"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "invoice-generator"
  end

  test do
    system "#{bin}/invoice-generator", "--version"
  end
end
