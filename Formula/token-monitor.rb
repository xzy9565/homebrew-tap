class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.7/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a272fd4a4c63e40c362633c3fd4906abb06f5845213f0b95b1f783c29629f459"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.7/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "114f9afbcc6a88cfa1b12caf977578fadd28da55a0fd0be68a98f7b39b1bc3b4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.7/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b1320b23a078509b54c6bcfc6b24ac693a4272cf48e2d5eb6235b1e6cc8c757"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
