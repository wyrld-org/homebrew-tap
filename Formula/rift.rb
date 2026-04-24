# typed: false
# frozen_string_literal: true

# This formula is published to github.com/wyrld-org/homebrew-tap.
# After `make release`, run `scripts/brew-release.sh <version>` to update.

class Rift < Formula
  desc "Secure tunnels to localhost — self-hosted ngrok alternative"
  homepage "https://github.com/wyrld-org/homebrew-tap/tree/main/apps/rift"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wyrld-org/homebrew-tap/releases/download/rift-v0.2.0/rift-0.2.0-darwin-arm64.tar.gz"
      sha256 "c736f8b533ec69b2364bba414d0e38afdb558f63ff9743eead2ccf3546b8f71c"
    end
    on_intel do
      url "https://github.com/wyrld-org/homebrew-tap/releases/download/rift-v0.2.0/rift-0.2.0-darwin-amd64.tar.gz"
      sha256 "53295a13289a8ad6da610db7ec136119aee72d4fecbacc06d24f6488760a60cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wyrld-org/homebrew-tap/releases/download/rift-v0.2.0/rift-0.2.0-linux-arm64.tar.gz"
      sha256 "0552852e1dd554969bfdf99b8b4e2f13f5591cef90393f1b66b3c83f114edfde"
    end
    on_intel do
      url "https://github.com/wyrld-org/homebrew-tap/releases/download/rift-v0.2.0/rift-0.2.0-linux-amd64.tar.gz"
      sha256 "ba1f59d494571334b1f8412db778a7a30a9e2e982d62835a5fb0f4f731f65261"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "rift", shell_output("#{bin}/rift version")
  end
end
