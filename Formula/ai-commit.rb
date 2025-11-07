class AiCommit < Formula
  desc "Your Rust-based AI commit message generator"
  homepage "https://github.com/anton-kochev/ai-commit"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.6.1/ai-commit-aarch64-apple-darwin.tar.gz"
      sha256 "36b39ee4f21efe98716a8616770c8692dd44d3393c281de556f3446e5987e54b"
    else
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.6.1/ai-commit-x86_64-apple-darwin.tar.gz"
      sha256 "bb67c1f77ca8abc6cd8636b819349c7103a18496345558775fc3c77776d7d084"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anton-kochev/ai-commit/releases/download/v0.6.1/ai-commit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2e10db37faa85d683667aa8e65537df6feaf2dc07123ffece08970be0e55080"
    end
  end

  def install
    bin.install "ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--version"
  end
end
