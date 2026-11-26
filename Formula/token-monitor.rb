class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.13"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.13/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "271455e93407618ffdb2d644bee5e38c48bc5a3ea535c43a8204179e25b50f7b"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.13/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "496dae887ddc824d61c01b0c242d62d3b6b4a115ad681c66eb9c10a54953aa2c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.13/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f55f9456c3051112bcf3469253fd51a5a1000c219b92da0a0d0b91ab8c872a7d"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
