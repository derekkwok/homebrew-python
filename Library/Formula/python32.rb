class Python32 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.2.6/Python-3.2.6.tgz"
  version "3.2.6"
  sha256 "0a58ad1f1def4ecc90b18b0c410a3a0e1a48cf7692c75d1f83d0af080e5d2034"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.2m-config"
  end

end
