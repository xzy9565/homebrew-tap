class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.6/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "28ee1c99e478ad966d2ad900fbb6bb8bbd30aa144dd832f2410062975525bd99"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.6/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7331f11b6c0273a7f2e85e0b63c531fbd0e53b50266677f3c47973f055146164"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.6/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e750b335bf1c90f81c6c063686fa26639580942015a03cd01b4fbd97b370219"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
