export RUBY_CONFIGURE_OPTS="--enable-yjit --with-openssl-dir=$(brew --prefix openssl@3) --with-libyaml-dir=$(brew --prefix libyaml)"
export RUBY_YJIT_ENABLE=1
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES