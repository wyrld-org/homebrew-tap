# typed: false
# frozen_string_literal: true

# This formula is published to github.com/wyrld-org/homebrew-tap.
# After `make release`, run `scripts/brew-release.sh <version>` to update.

class Rift < Formula
  desc "Secure tunnels to localhost — self-hosted ngrok alternative"
  homepage "https://github.com/wyrld-org/wyrld-admin/tree/main/apps/rift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wyrld-org/wyrld-admin/releases/download/rift-v0.1.0/rift-0.1.0-darwin-arm64.tar.gz"
      sha256 "f6cf37999f7aaed9590f9af505b2afc7a6e600626db7b4daf8243c638ca3878d"
    end
    on_intel do
      url "https://github.com/wyrld-org/wyrld-admin/releases/download/rift-v0.1.0/rift-0.1.0-darwin-amd64.tar.gz"
      sha256 "876a800d700ecce76789c90e272b920c3d5ca606dad86d9974db8b613f99a315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wyrld-org/wyrld-admin/releases/download/rift-v0.1.0/rift-0.1.0-linux-arm64.tar.gz"
      sha256 "7f44e34350a06ce6fdd8658a585d3ac7390f730554dcdc50f14442686b3a6f7a"
    end
    on_intel do
      url "https://github.com/wyrld-org/wyrld-admin/releases/download/rift-v0.1.0/rift-0.1.0-linux-amd64.tar.gz"
      sha256 "6e6cee95dfb010f1c3b6e132d8fd98ad9f5fc3b466d142169597c04d65544608"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    assert_match "rift", shell_output("#{bin}/rift version")
  end
end
