class InvoiceGenerator < Formula
  desc "Invoice generator CLI"
  homepage "https://github.com/anton-kochev/invoice-generator"
  version "0.2.0"
  url "https://github.com/anton-kochev/invoice-generator/releases/download/v0.2.0/invoice-generator-v0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "b0f9712e8bd70380b27671b1c3cec9d815afbd616be5e3ecae74568049dfeefe"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "invoice-generator"
  end

  test do
    system "#{bin}/invoice-generator", "--version"
  end
end
