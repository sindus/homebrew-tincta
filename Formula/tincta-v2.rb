class TinctaV2 < Formula
  desc "A fast, clean, cross-platform text editor with syntax highlighting"
  homepage "https://github.com/sindus/tincta-V2"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sindus/tincta-V2/releases/download/v0.4.0/tincta-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "27fc5919a114c10a5ee67bc5cfbf0e38fcc6e6a03a7c59d47eaa001c7bd92b13"
    end
  end

  def install
    bin.install "tincta"
  end

  test do
    assert_predicate bin/"tincta", :exist?
  end
end
