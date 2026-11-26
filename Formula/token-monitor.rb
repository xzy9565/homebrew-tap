class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.14"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.14/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "847aa2536162b9960e3830783997db3b4667cdb41ebcfcd507dcd6f6c4c5a839"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.14/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "de216047de2235b792449baa874ae8a39d74e968bfb4e4e71bc739759523f3aa"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.14/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37dcea73e1e27ae2b0905536d1bf98c828eb85375b6a440d0b6769dab1146407"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
