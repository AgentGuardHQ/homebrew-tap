# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + Chitin governance"
  homepage "https://github.com/chitinhq/shellforge"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chitinhq/shellforge/releases/download/v0.6.1/shellforge_0.6.1_darwin_arm64.tar.gz"
      sha256 "705ee35b90ac361b96fcb7a1be6d37a32669aead0d54bf5bbf2ac37cfad24d57"
    end
    on_intel do
      url "https://github.com/chitinhq/shellforge/releases/download/v0.6.1/shellforge_0.6.1_darwin_amd64.tar.gz"
      sha256 "44ea8609890a60ec2fd64715d6e91eee5ca3b094f425516d6a4d2df8c02bb64f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chitinhq/shellforge/releases/download/v0.6.1/shellforge_0.6.1_linux_arm64.tar.gz"
      sha256 "04e178b1d0e92dc2746ade64dc989fd7b5465004ce7cf295aca16d674d729671"
    end
    on_intel do
      url "https://github.com/chitinhq/shellforge/releases/download/v0.6.1/shellforge_0.6.1_linux_amd64.tar.gz"
      sha256 "b1e74662d61a525931f9db7b115e17d068c2673c7eb8a0e2de4ad67438bd00af"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
