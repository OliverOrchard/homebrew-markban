class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.0/markban-osx-arm64.tar.gz"
      sha256 "354240697f857afa1fd47727fa91f3d545752a3bbda322e920c26a15b554bded"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.0/markban-osx-x64.tar.gz"
      sha256 "9da99f38013d0dfa21dc653ba80d0bb5a4eb3e7efc3b6074b70251e4b3532468"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.0/markban-linux-x64.tar.gz"
      sha256 "23c2b01faee51be45f2f715bd6df2ce1ccba02c1e2122d6340e80486c7fd1d68"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.0/markban-linux-arm64.tar.gz"
      sha256 "4d14ac23c1163245b061229ea3a701d5498b370c7de02fb6754d5919f1680995"
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
