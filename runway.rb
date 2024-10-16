# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runway < Formula
  desc "The runway CLI."
  homepage "https://runway.planetary-quantum.com/"
  version "1.9.0"
  license "proprietary"

  on_macos do
    on_intel do
      url "https://download.runway.horse/runway/1.9.0/runway_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "f96ae2e9dada049e5dcb1800ea589623096f6c3d67c56df5c39129ef380a82a0"

      def install
        bin.install "runway"
      end
    end
    on_arm do
      url "https://download.runway.horse/runway/1.9.0/runway_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d52204d59b0e5a3e406e121c6b4921eee3753f4a3c4a5271f59861842777c78b"

      def install
        bin.install "runway"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://download.runway.horse/runway/1.9.0/runway_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "561fca7821c165149c476dbf1268c9890af98b7eee3cc89808666c734cea1aee"

        def install
          bin.install "runway"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://download.runway.horse/runway/1.9.0/runway_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "bea13b304abd2fda87cf118fb160ba227e4c25366fc3ca2158e234d853896ede"

        def install
          bin.install "runway"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run `runway login` to get started, and `runway install-completions` to install auto-complete
    EOS
  end

  test do
    system "#{bin}/runway version"
  end
end
