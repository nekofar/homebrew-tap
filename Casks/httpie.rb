cask "httpie" do
  version "2022.2.0"
  sha256 "62e723a531fdb6aab9ee001b07043751b6558cc402d2343723057353cb5d920f"

  url "https://github.com/httpie/desktop/releases/download/v#{version}/HTTPie-#{version}.dmg",
      verified: "github.com/httpie/desktop/"
  name "HTTPie"
  desc "HTTPie for Desktop"
  homepage "https://httpie.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*.*)$/i)
  end

  app "HTTPie.app"
end
