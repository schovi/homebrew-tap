class Mcpainless < Formula
  desc "Local manager and proxy for remote MCP servers"
  homepage "https://github.com/schovi/mcpainless"
  version "0.3.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.3.0/mcpainless_0.3.0_darwin_amd64.tar.gz"
      sha256 "6319ffa6dbddf13a1d5523ec6f0e58f56ead6366dea71d04c1f514c40f5bfa39"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.3.0/mcpainless_0.3.0_darwin_arm64.tar.gz"
      sha256 "288f20319c47ad7e379df491f9ec2d4988e827ed1c54391a9308fc2952880389"
    end
  end
  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.3.0/mcpainless_0.3.0_linux_amd64.tar.gz"
      sha256 "deb0adcfbbaedd52fb3687af7aa993f894eb19a24e33d3afb2dd2bc7daac9448"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.3.0/mcpainless_0.3.0_linux_arm64.tar.gz"
      sha256 "17d86a273ce8e165a5e12dc18966e7104cfeed8b3c7f5e72a122e42b6c20699e"
    end
  end
  def install
    bin.install "mcpainless"
  end
  def caveats
    <<~EOS
      Run mcpainless start, then mcpainless open to create or unlock your vault.
    EOS
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/mcpainless --version")
  end
end
