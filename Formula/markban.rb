class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.3.0/markban-osx-arm64.tar.gz"
      sha256 "8395da0d5aec95cc8d24c1acafb87ad5409a5ba0645aedf718523cd0b6cad1a0"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.3.0/markban-osx-x64.tar.gz"
      sha256 "eed00c27c33527f691c718c3bc77d52cd85a2effdbec1e49b19746849b19ab59"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.3.0/markban-linux-x64.tar.gz"
      sha256 "ee63636938383df2fab08d4ca334ae2ced46515d20e224336f35c8e7c6def763"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.3.0/markban-linux-arm64.tar.gz"
      sha256 "791d5eb6d56cbe1b354b4f7dc09a9e8637ea9a4477ce4071c0205c3050c689d2"
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
