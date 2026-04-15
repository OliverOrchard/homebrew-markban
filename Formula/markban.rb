class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.1.0/markban-osx-arm64.tar.gz"
      sha256 "7037f83ae8bd3c866a840cd5d1da2b31f606b2dc3176e663d0ada7fd515b2b93"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.1.0/markban-osx-x64.tar.gz"
      sha256 "dc5023d4f8e9f6833256e829bf0caa0815e7fcd674e05cace42cb4d52037a0cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.1.0/markban-linux-x64.tar.gz"
      sha256 "6c2abdacf84b3c64af576c688886df9fc079c853c9f5dd60ec6b3a8a503b6325"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.1.0/markban-linux-arm64.tar.gz"
      sha256 "9cbea0f94843512395999ea369f8723d1926d501d3290fe226f69fd525d2fab7"
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
