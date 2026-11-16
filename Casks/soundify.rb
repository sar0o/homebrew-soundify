cask "soundify" do
  version "0.3.6"
  sha256 "01c65b2b287133b50ceb02ee0e0ff4952aa1b947ec5159a024fc2f966342e152"

  url "https://github.com/sar0o/soundify-releases/releases/download/v#{version}/Soundify-macos.zip"
  name "Soundify"
  desc "Plays Spotify and SoundCloud in one window and one queue"
  homepage "https://github.com/sar0o/soundify-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Soundify.app"

  # Uygulama Apple Developer ID ile imzalı değil (ad-hoc imza). Karantina etiketi kalırsa macOS
  # açmayı reddeder ve kullanıcı Ayarlar'dan "Yine de aç" demek zorunda kalır. Soundify kendi
  # güncellemesinde de aynı etiketi siliyor (src/update.rs).
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Soundify.app"]
  end

  zap trash: [
    "~/Library/Application Support/soundify",
    "~/Library/Saved Application State/com.sar0o.soundify.savedState",
  ]
end
