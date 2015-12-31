class NodeBuildUpdateDefs < Formula
  desc "Scrape build definitions from nodejs.org and iojs.org"
  homepage "https://github.com/jasonkarns/node-build-update-defs"
  head "https://github.com/jasonkarns/node-build-update-defs.git"

  depends_on "nodenv"
  depends_on "node-build"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /^update-version-defs$/, shell_output("nodenv commands")
  end
end
