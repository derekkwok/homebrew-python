class Python34 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.4.4/Python-3.4.4.tgz"
  version "3.4.4"
  sha256 "bc93e944025816ec360712b4c42d8d5f729eaed2b26585e9bc8844f93f0c382e"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m-config"
  end

end
