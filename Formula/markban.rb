class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.2.0/markban-osx-arm64.tar.gz"
      sha256 "2c781378dcc4b12690097a2216d56fe4cb1b272601f47a4ebfee7926f7efe670"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.2.0/markban-osx-x64.tar.gz"
      sha256 "79a0623abd33e0a5cfc7ec03e9e565b9ada5c909bc11888737b7c84daa6e9437"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.2.0/markban-linux-x64.tar.gz"
      sha256 "0a72c74e684602f322d86bf22b65d1d2d57e4b9958292a7c1a8391030429e8c9"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.2.0/markban-linux-arm64.tar.gz"
      sha256 "c56446824502a9c3c0160269f536d39fe692b361ebb4b29e58c7aebfbe2b4106"
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
