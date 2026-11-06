class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.5.0/markban-osx-arm64.tar.gz"
      sha256 "3841555ad4287a18eb2501dce52da3ac4fc5c82693ab6f15e5709582440c5119"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.5.0/markban-osx-x64.tar.gz"
      sha256 "85d15adbb136ebe56e55a6def08c35b10101f286a927cbd6ccedc6ba1e5d28e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.5.0/markban-linux-x64.tar.gz"
      sha256 "e2bd7336e601d6abc14f165cca902de53caf5a1df65560e57506e23283340c4f"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.5.0/markban-linux-arm64.tar.gz"
      sha256 "9aa4a197a1e2e5f8e524d3fc4756281614ae3ca6da66ccdcb01a75a3f1d5ca1e"
    end
  end

  def install
    libexec.install "markban", "wwwroot"
    bin.install_symlink libexec/"markban"
  end

  test do
    assert_match "markban", shell_output("#{bin}/markban --help 2>&1")
  end
end
