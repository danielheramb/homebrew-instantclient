require File.expand_path("../../Strategies/cache_wo_download", __FILE__)

# A formula that installs the Instant Client Basic Lite package.
class InstantclientBasiclite < Formula
  desc "Oracle Instant Client Basic Lite x64."
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"

  url "https://github.com/danielheramb/homebrew-instantclient/raw/files/Files/instantclient-basiclite-macos.x64-12.2.0.1.0-2.zip",
      :using => CurlDownloadStrategy
  sha256 "2997f753b61f8b445a241e99412c132feb76cf246dcca2e7837fe82b15c1efb8"

  conflicts_with "instantclient-basic"

  def install
    lib.install Dir["*.dylib*"]
  end
end
