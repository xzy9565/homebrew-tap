class TokenMonitor < Formula
  desc "Native terminal dashboard for AI subscriptions, quotas, and token ledgers"
  homepage "https://github.com/xzy9565/token-monitor"
  version "0.2.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.5/token-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4a1e3355ab4406306d14ed32638c720dc1d2f27b1e6dd80af61ab85a065d9e25"
    else
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.5/token-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "eaf3f841d067eacbc3d369f20479965fe1b693d922a53c0e79847b9dc2c3eb78"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/xzy9565/token-monitor/releases/download/v0.2.5/token-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c1c9b64af09609e94f97e15dba16ed0be7eb111f066539c7c0d99ff8973b6b3"
    end
  end

  def install
    bin.install "token-monitor"
  end

  test do
    assert_match "token-monitor", shell_output("#{bin}/token-monitor --help")
  end
end
