class Python26 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/2.6.9/Python-2.6.9.tgz"
  version "2.6.9"
  sha256 "7277b1285d8a82f374ef6ebaac85b003266f7939b3f2a24a3af52f9523ac94db"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python2.6"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python2.6-config"
  end

end
