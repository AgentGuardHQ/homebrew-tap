# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.0/shellforge_0.5.0_darwin_arm64.tar.gz"
      sha256 "e284554ae93cf607f883f2156160405d9c38deda05cadf73524b90bed540fdb7"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.0/shellforge_0.5.0_darwin_amd64.tar.gz"
      sha256 "b8c93877567817c6b39d516d128c599a949d8d24b6d395ce3cca81eb272ed3de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.0/shellforge_0.5.0_linux_arm64.tar.gz"
      sha256 "0cc9ff48a8b11bdf64eb85fe2daa415d802fc76c8b9f0c458f402d15cdb93f87"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.5.0/shellforge_0.5.0_linux_amd64.tar.gz"
      sha256 "360e98ed86cd513505b9a564dfe2d8b8c309c3d3a6c44bace8cfb555efca8585"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
