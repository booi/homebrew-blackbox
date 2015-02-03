class Blackbox < Formula
  homepage "http://the-cloud-book.com/"
  url "https://github.com/StackExchange/blackbox/archive/3f9d2a3.tar.gz"
  version "1.2-dev"
  sha1 "ef70a5dc990496021b78fe6bf3a05b51376383a2"
  revision 1

  depends_on "gnupg" 

  def install
    bin.install "bin/_blackbox_common.sh"
    bin.install "bin/_stack_lib.sh"
    bin.install "bin/blackbox_addadmin"
    bin.install "bin/blackbox_cat"
    bin.install "bin/blackbox_edit"
    bin.install "bin/blackbox_edit_end"
    bin.install "bin/blackbox_edit_start"
    bin.install "bin/blackbox_initialize"
    bin.install "bin/blackbox_postdeploy"
    bin.install "bin/blackbox_register_new_file"
    bin.install "bin/blackbox_removeadmin"
    bin.install "bin/blackbox_shred_all_files"
    bin.install "bin/blackbox_update_all_files"
  end

# Unfortunately we can't run the tests "as is" if we have a ~/.gnupg directory.
#  test do
#    system "false"
#  end
end

