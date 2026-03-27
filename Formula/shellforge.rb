# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.4/shellforge_0.3.4_darwin_arm64.tar.gz"
      sha256 "6ac029eaccf9e18165e7d33f3eb33703c0fb30b25df19438ffa3a818af58bbc4"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.4/shellforge_0.3.4_darwin_amd64.tar.gz"
      sha256 "2dddebbedc9f38ec667467386eba206f4f262592c66a2542b6da0c7a70638aff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.4/shellforge_0.3.4_linux_arm64.tar.gz"
      sha256 "fee98dcb7f73b9ccb0f0f849663055ca27dce20cf457bdb85edaedc635475a1e"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.4/shellforge_0.3.4_linux_amd64.tar.gz"
      sha256 "cda26394dbf44f149d78b0bfb0ebcf793b989965a96289c8fb6e87954eec46b0"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
