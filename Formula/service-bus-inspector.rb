# Service Bus Inspector Homebrew Formula
#
# INSTRUCTIONS:
# 1. Create a new GitHub repository: anton-kochev/homebrew-tap
# 2. Create a directory: Formula/
# 3. Save this file as: Formula/service-bus-inspector.rb
# 4. Update the SHA256 hashes after each release:
#    - Download each release archive
#    - Run: shasum -a 256 <archive-file>
#    - Replace the corresponding hash in the formula
#
# Installation:
#   brew tap anton-kochev/tap
#   brew install service-bus-inspector

class ServiceBusInspector < Formula
  desc "Terminal-based UI for inspecting and monitoring Azure Service Bus queues"
  homepage "https://github.com/anton-kochev/service-bus-inspector"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/anton-kochev/service-bus-inspector/releases/download/v0.1.0/ServiceBusInspector-osx-x64.tar.gz"
      sha256 "PUT_SHA256_HERE_FOR_OSX_X64"
    end

    on_arm do
      url "https://github.com/anton-kochev/service-bus-inspector/releases/download/v0.1.0/ServiceBusInspector-osx-arm64.tar.gz"
      sha256 "PUT_SHA256_HERE_FOR_OSX_ARM64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/anton-kochev/service-bus-inspector/releases/download/v0.1.0/ServiceBusInspector-linux-x64.tar.gz"
      sha256 "PUT_SHA256_HERE_FOR_LINUX_X64"
    end

    on_arm do
      # ARM64 Linux binaries are not currently available
      # Users on ARM64 Linux can build from source
      odie "ARM64 Linux binaries are not currently available. Please build from source."
    end
  end

  def install
    bin.install "service-bus-inspector"
  end

  test do
    # Test that the binary exists and is executable
    # The binary requires connection arguments so we don't test full functionality
    assert_predicate bin/"service-bus-inspector", :exist?
    assert_predicate bin/"service-bus-inspector", :executable?
  end
end

# UPDATING FOR NEW RELEASES:
#
# 1. Update the version number
# 2. Update all URLs to point to the new release tag
# 3. Download each platform archive from the release
# 4. Calculate SHA256 for each:
#    shasum -a 256 ServiceBusInspector-osx-x64.tar.gz
#    shasum -a 256 ServiceBusInspector-osx-arm64.tar.gz
#    shasum -a 256 ServiceBusInspector-linux-x64.tar.gz
# 5. Replace the SHA256 values in the formula
# 6. Commit and push to the homebrew-tap repository
#
# Example automation script (run after release):
#   VERSION="0.1.0"
#   for PLATFORM in osx-x64 osx-arm64 linux-x64; do
#     curl -fsSL "https://github.com/anton-kochev/service-bus-inspector/releases/download/v${VERSION}/ServiceBusInspector-${PLATFORM}.tar.gz" | \
#       shasum -a 256
#   done
