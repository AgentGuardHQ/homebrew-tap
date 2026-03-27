# typed: false
# frozen_string_literal: true

class Shellforge < Formula
  desc "Local governed agent runtime — wraps Ollama + AgentGuard governance"
  homepage "https://github.com/AgentGuardHQ/shellforge"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.2/shellforge_0.4.2_darwin_arm64.tar.gz"
      sha256 "78cafe1e02a95443c29bf2b87f6d652ba82481be6aa7c320ee8f286480ee137e"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.2/shellforge_0.4.2_darwin_amd64.tar.gz"
      sha256 "9c27d431c1fce2612a539b5407d6afc366ee9dbd8ae57df304e56f8ece90d4e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.2/shellforge_0.4.2_linux_arm64.tar.gz"
      sha256 "f9a27a5d59a1feecf501898af28b2699115a0809a860b06be1a99a4f3524a06b"
    end
    on_intel do
      url "https://github.com/AgentGuardHQ/shellforge/releases/download/v0.4.2/shellforge_0.4.2_linux_amd64.tar.gz"
      sha256 "1267bea5cfbd3aaa38293ceec10cc8c52f0f5383ff0ec3d4072b4f2987b21328"
    end
  end

  def install
    bin.install "shellforge"
  end

  test do
    system "#{bin}/shellforge", "version"
  end
end
