class Mcpainless < Formula
  desc "Local manager and proxy for remote MCP servers"
  homepage "https://github.com/schovi/mcpainless"
  version "0.1.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.1.0/mcpainless_0.1.0_darwin_amd64.tar.gz"
      sha256 "72c1d3fe2e30cf4f6417b6d537edcf0947d32730f5c8578cad273f01c60d4228"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.1.0/mcpainless_0.1.0_darwin_arm64.tar.gz"
      sha256 "e81672b25ab10ecd1ab1edb45e6b657f2f9c591eb8dfab7cbafede5769cefeab"
    end
  end
  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.1.0/mcpainless_0.1.0_linux_amd64.tar.gz"
      sha256 "5dc02949eec2c5dd9f339e8cb8d7c423895950a70317d80648da261640ec8d04"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.1.0/mcpainless_0.1.0_linux_arm64.tar.gz"
      sha256 "f8817b086c6eb52b1940aa7102bbc84b360e6fd83ec70097aa188587b5af5fbd"
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
