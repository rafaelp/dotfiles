if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/readline/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig:$PKG_CONFIG_PATH"
export optflags="-Wno-error=implicit-function-declaration"
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"
export LDFLAGS="-L/opt/homebrew/opt/icu4c/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/icu4c/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig:$PKG_CONFIG_PATH"
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig:$PKG_CONFIG_PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include:$CPPFLAGS"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig:$PKG_CONFIG_PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@18/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@18/include:$CPPFLAGS"