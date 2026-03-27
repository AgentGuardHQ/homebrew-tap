# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.4/shellforge_0.4.4_darwin_arm64.tar.gz"
      sha256 "ead65ea0794e4067c5ab2e005c3f5e9f7559170bb83b4eaca3e5509519e79b0e"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.4/shellforge_0.4.4_darwin_amd64.tar.gz"
      sha256 "96924078744905cd3caa2674655e50d08884f576c235832acbe13c78ebf73eaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.4/shellforge_0.4.4_linux_arm64.tar.gz"
      sha256 "2026dfdfdfa13e7a6b41093641034d8a10a576593e69c9a013eed5cf5746527f"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.4/shellforge_0.4.4_linux_amd64.tar.gz"
      sha256 "f0e7ddef20af0bd93d45ced8eda4f44153d0e465f6db67c3b275f1324bf980fb"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
