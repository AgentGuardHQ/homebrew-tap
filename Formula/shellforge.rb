# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.1/shellforge_0.3.1_darwin_arm64.tar.gz"
      sha256 "236b30dc478e6f115c2aef93e0272e463a656adb11d50d82873bc205dfb20787"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.1/shellforge_0.3.1_darwin_amd64.tar.gz"
      sha256 "f708e16196a10c256209255d05602e0f5827917579a6514cb3cf786948583364"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.1/shellforge_0.3.1_linux_arm64.tar.gz"
      sha256 "b2c0ccbd8ab860c1f18ffe139a5834e02b66efc6cf152140cd3921a90d94b15f"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.3.1/shellforge_0.3.1_linux_amd64.tar.gz"
      sha256 "3d318d25ea6edd227283eee41b0147203f50343b794127adac03104965e10dba"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
