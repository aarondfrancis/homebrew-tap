class Counselors < Formula
  desc "Fan out prompts to multiple AI coding agents in parallel"
  homepage "https://github.com/aarondfrancis/counselors"
  url "https://registry.npmjs.org/counselors/-/counselors-0.4.9.tgz"
  sha256 "597bb7d4b3670240b41f2a52f494d44365764c104b40ce26bff34af5f9751c31"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink libexec/"bin/counselors"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/counselors --version")
  end
end
