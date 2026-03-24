# MinerU CLI Formula
# Usage: brew install opendatalab/tap/mineru-cli
#        or
#        brew tap opendatalab/tap
#        brew install mineru-cli

class MineruCli < Formula
  desc "Zero-dependency CLI for document extraction and web crawling"
  homepage "https://mineru.net"
  version "0.1.0"
  
  # Use GitHub Releases as the source
  on_macos do
    on_arm do
      url "https://github.com/opendatalab/MinerU-Ecosystem/releases/download/cli/mineru-open-api-cli-darwin-arm64"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/opendatalab/MinerU-Ecosystem/releases/download/cli/mineru-open-api-cli-darwin-amd64"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end
  end
  
  on_linux do
    on_arm do
      url "https://github.com/opendatalab/MinerU-Ecosystem/releases/download/cli/mineru-open-api-cli-linux-arm64"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/opendatalab/MinerU-Ecosystem/releases/download/cli/mineru-open-api-cli-linux-amd64"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end
  end

  def install
    # The binary name from GitHub is like "mineru-open-api-cli-darwin-arm64"
    # We install it as "mineru-open-api" for consistency with install.sh
    bin.install Dir["*"].first => "mineru-open-api"
  end

  test do
    system "#{bin}/mineru-open-api", "version"
  end
end
