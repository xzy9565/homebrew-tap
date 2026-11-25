class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.9/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d5b9e2cce3adffb2ad7052c06a408369c3d87ccdb94737b70c49b87a756dd0d3"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.9/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "62a4d9a3d52d5dbda0307040c53431f9320b2014cf085b7b0d9b5b28d6a0ae76"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.9/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97c9fe462ebc7a528bef75010d5a8bf12582489d5d91d660ff754cd66c318214"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
