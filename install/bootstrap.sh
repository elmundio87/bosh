#! /usr/bin/env bash

[ -f $BOSH_HOME/install/${OS}_bootstrap.sh ] && {
    info "including ${OS} bootstrap script"
    install ${OS}_bootstrap
} || {
    warn "no $OS bootstrap script found"
}

package native emacs
package native tree
package native mosh
