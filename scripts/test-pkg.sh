echo "Executing package..."

${EMACS:=emacs} -nw --batch --load "./scripts/test-pkg.el"

emacs --batch -q -l /scripts/pkg-prepare.el -l /elisp-lint.el -f elisp-lint-files-batch --no-package-lint dashboard-widgets.el dashboard.el
