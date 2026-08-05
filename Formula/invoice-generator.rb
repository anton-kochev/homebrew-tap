class InvoiceGenerator < Formula
  desc "Invoice generator CLI"
  homepage "https://github.com/anton-kochev/invoice-generator"
  version "0.5.0"
  url "https://github.com/anton-kochev/invoice-generator/releases/download/v0.5.0/invoice-generator-v0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "6864230970aa0f347743d41408875d2dca51a6fefd39eebd73e7e15678a3dc42"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "invoice-generator"
  end

  test do
    system "#{bin}/invoice-generator", "--version"
  end
end
