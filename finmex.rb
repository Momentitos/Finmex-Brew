class Finmex < Formula
  desc "Calculadora financiera especial para productos financieros mexicanos"
  homepage "https://github.com/Momentitos/Finmex-Brew"
  url "https://github.com/Momentitos/Finmex-Brew/releases/download/Finmex-Brew/finmex.tar.gz"
  version "1.0.0"
  sha256 "4748cea10f60e61047f557e0c0544a28a512af6937a5c6fa5f883311f9bca9dc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Calculadora financiera", shell_output("#{bin}/finmex --help")
  end
end
