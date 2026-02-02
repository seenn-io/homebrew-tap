class Seenn < Formula
  desc "Seenn CLI - Manage your Seenn account from the command line"
  homepage "https://seenn.io"
  url "https://registry.npmjs.org/@seenn/cli/-/cli-0.1.0.tgz"
  sha256 "9c5675083862f9f7a4dd75c79e71fd27290545f5665f5fd3a9763a75a44ce082"
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
