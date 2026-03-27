# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.5/shellforge_0.3.5_darwin_arm64.tar.gz"
      sha256 "0aa9fd0a401cc30d0aca20e2637254e7c51eb6dab45733e941597e26fa83dacb"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.5/shellforge_0.3.5_darwin_amd64.tar.gz"
      sha256 "9257908daa02238dddb819dc1e0e1f116a7c0e6db32415e6200f107694837172"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.5/shellforge_0.3.5_linux_arm64.tar.gz"
      sha256 "ec7f3146c04a4f7c142480b99b6f7178fabdcc65dc883dac6e86ac5495c51c41"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.5/shellforge_0.3.5_linux_amd64.tar.gz"
      sha256 "4e71b78631db6f28ec93560b2ce472f520d281dc04e629116c91beac7776eb4e"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
