class InvoiceGenerator < Formula
  desc "Invoice generator CLI"
  homepage "https://github.com/anton-kochev/invoice-generator"
  version "0.1.0"
  url "https://github.com/anton-kochev/invoice-generator/releases/download/v0.1.0/invoice-generator-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "5559a98f9657e93648a1c8e8934ef2e142c710476b1724ce2007b2d4ec5e6c2c"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "invoice-generator"
  end

  test do
    system "#{bin}/invoice-generator", "--version"
  end
end
