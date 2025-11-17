class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.7.1/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "513dcf53805380141aab03a20c8d3a072a909b90e185962d1280f6d4926ff8bf"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.7.1/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "6f0edb5ed1d761b089c4187bc3f6cb2b130d3688d5c41b8b2ed314667035570f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.7.1/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e6f81c7aed5d8a3b9e16633b00019f843760f1f6eeaf9b3ea9df5457d57049d"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
