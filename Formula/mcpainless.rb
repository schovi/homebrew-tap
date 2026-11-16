class Mcpainless < Formula
  desc "Local manager and proxy for remote MCP servers"
  homepage "https://github.com/schovi/mcpainless"
  version "0.2.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.2.0/mcpainless_0.2.0_darwin_amd64.tar.gz"
      sha256 "30d84a8209b032c12a80bc827f80c6a9560b2685347ddbadefcfda7d2cddfdf9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.2.0/mcpainless_0.2.0_darwin_arm64.tar.gz"
      sha256 "87093dfd441153c0b9afb7591394c2afb14dd2edb3b1263a47168d7bd8890a93"
    end
  end
  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.2.0/mcpainless_0.2.0_linux_amd64.tar.gz"
      sha256 "b1c50f47a9197b99c6fa60aa45034e3679f1dc980442ae18c5b67362b2504425"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://mcpainless.com/download/0.2.0/mcpainless_0.2.0_linux_arm64.tar.gz"
      sha256 "ad8f5590d171d90dbce9934ff7c9fb4ea7f7c9db219cb317cfa577378f0270fe"
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
