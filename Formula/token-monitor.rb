class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.8/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4e1afe6025d88456edc5e132d3f52421429274a81ce98577e694cd8f33edffa4"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.8/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1e75a76241eadc6807958d289234c2b5fd5a9ed2dbcd250e4c87272efca2fa19"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.8/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "564bacff2276bc56d2ff1226d336093a6e9959b58f13b4d18726fa9af0ec7403"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
