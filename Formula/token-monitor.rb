class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.1/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "45c5ccab7d60717a23d2eccaec91ee0ecc94a444443bc610f8f32396cd21c827"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.1/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b545aeb0846aba0c36c1c29b9080001ba8249d39f75b14ba966e1a181ff577d9"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.1/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41ae3b95eba403ca56a1b6035da29f31006fcb3ee7f939ac04f53f27baa784ae"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
