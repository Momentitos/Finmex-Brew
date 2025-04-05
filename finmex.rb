class Finmex < Formula
  desc "Calculadora financiera especial para productos financieros mexicanos"
  homepage "https://github.com/Momentitos/finmex"
  url "https://github.com/Momentitos/finmex/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "EL_HASH_QUE_OBTUVISTE_EN_EL_PASO_3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "Calculadora financiera", shell_output("#{bin}/finmex --help")
  end
end
