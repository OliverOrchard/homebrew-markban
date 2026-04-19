class Markban < Formula
  desc "Markdown board — a file-based work item tracker with CLI and local web UI"
  homepage "https://github.com/OliverOrchard/markban"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.5/markban-osx-arm64.tar.gz"
      sha256 "ddce1128ffcf9e81d742024a75135f5b1fba3f86ab40d72a053d6c186693ad3e"
    end
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.5/markban-osx-x64.tar.gz"
      sha256 "4e684694df8db332e799e223bae478d204aaefc30e11a681bf70acf77c276ad6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.5/markban-linux-x64.tar.gz"
      sha256 "4d73f9fe3dff21c07b8c38b401f45f6d7dbb58c1369cf50e8227635fe11abc2a"
    end
    on_arm do
      url "https://github.com/OliverOrchard/markban/releases/download/v0.4.5/markban-linux-arm64.tar.gz"
      sha256 "bc45e9b14c1ca135944cadd16152d78445eefae574b30947b4a169f12f0dcd29"
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
