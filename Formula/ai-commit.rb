class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.7.0/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "685daf3618ca7d45f92521b6676f0bf874bc5ce89536aed1f6e2f5daa5467402"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.7.0/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "7c4a59468461945550f836f355cff1ce60195d5dcdf0546d428bc2dc9c752d80"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.7.0/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5215abab98af23d5eca9c1a6e84a1ea48f45a563b8aaa9122eeb80067f05f7cb"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
