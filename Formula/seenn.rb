class Seenn < Formula
  desc "Seenn CLI - Manage your Seenn account from the command line"
  homepage "https://seenn.io"
  url "https://registry.npmjs.org/@seenn/cli/-/cli-0.2.0.tgz"
  sha256 "a291ae4048383d39891c5dce2326c95261b01f19ed8dc63b94d6f668185a8169"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Seenn CLI", shell_output("#{bin}/seenn --help")
  end
end
