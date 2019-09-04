;;; packages.el --- weather layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: zhangliang <zhangliang@bogon>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `weather-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `weather/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `weather/pre-init-PACKAGE' and/or
;;   `weather/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst weather-packages
  '(wttrin)
  )

(defun weather/init-wttrin()
  (use-package wttrin
    :defer t
    :init
    :config)
  )

(defun weather/post-init-wttrin()
  (setq wttrin-default-cities '("Beijing" "Jiyuan"))
  (setq wttrin-default-accept-language '("Accept-Language" . "zh-CN"))
  )

;;; packages.el ends here
