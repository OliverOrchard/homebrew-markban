# This file is the initial template for the OliverOrchard/homebrew-markban tap.
#
# Setup steps:
#  1. Create a new public GitHub repo:  OliverOrchard/homebrew-markban
#  2. Commit this file at  Formula/markban.rb  in that repo.
#  3. In the markban repo, add a secret HOMEBREW_TAP_TOKEN (classic PAT, repo scope).
#  4. Push a version tag to trigger the release workflow, which will overwrite
#     the sha256 values and version automatically.
#
# Users install with:
#   brew install OliverOrchard/markban/markban

class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.0.0"   # replaced automatically on each release
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.0.0/markban-osx-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.0.0/markban-osx-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.0.0/markban-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.0.0/markban-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    # The web UI's static assets live next to the binary.
    # Installing both to libexec keeps AppContext.BaseDirectory correct.
    libexec.install "markban", "wwwroot"
    bin.install_symlink libexec/"markban"
  end

  test do
    assert_match "markban", shell_output("#{bin}/markban --help 2>&1")
  end
end
