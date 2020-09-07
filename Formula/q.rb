class Q < Formula
  desc "Treat text as a database"
  homepage "https://github.com/harelba/q"
  url "https://github.com/harelba/packages-for-q/raw/master/single-binary/Darwin/2.0.9/q"
  sha256 "88b2cd98259e64dae5ffd0efc542a8015e2ea1c13c066627847a8ff02c703b43"
  license "GPL-3.0"
  head "https://github.com/harelba/q.git"

  bottle :unneeded

  def install
    bin.install "q"
  end

  test do
    seq = (1..100).map(&:to_s).join("\n")
    output = pipe_output("#{bin}/q -c 1 'select sum(c1) from -'", seq)
    assert_equal "5050\n", output
  end
end
