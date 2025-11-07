class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.6.2/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "a78d0ac249a4e23095c2ac6a073319fb5e072461dca938e37cf9de41484ea7fe"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.6.2/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "2617d9ce077b6e695fac4bc2c5e84bce5996a30ce9c6cf5cd946f945d0d71107"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.6.2/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b9a456fb5282a90991e4bf7e1d8244cc25ec114bcc503d98658aa7424daec48"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
