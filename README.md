# Soundify için Homebrew tap

[Soundify](https://github.com/sar0o/soundify-releases) — Spotify (Premium) ve SoundCloud'u
tek pencerede, tek kuyrukta çalan macOS uygulaması.

```sh
brew install --cask sar0o/soundify/soundify
```

Apple Silicon Mac gerekir (macOS 11+).

Uygulama Apple Developer ID ile imzalı değil. Karantina etiketi kalsaydı macOS açmayı
reddedip seni Ayarlar'a gönderirdi; cask kurulumdan sonra bu etiketi siliyor. Soundify
kendi güncellemesinde de aynısını yapıyor.

Yeni sürümleri Soundify kendisi bulup kuruyor (üst çubuktaki **Güncelle**). Homebrew'dan
almak istersen:

```sh
brew upgrade --cask --greedy soundify
```

Sürüm notları ve elle kurulum: [sar0o/soundify-releases](https://github.com/sar0o/soundify-releases/releases/latest).
