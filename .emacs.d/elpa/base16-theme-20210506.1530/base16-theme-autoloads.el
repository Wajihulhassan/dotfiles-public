;;; base16-theme-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "base16-theme" "base16-theme.el" (24765 27864
;;;;;;  287002 366000))
;;; Generated autoloads from base16-theme.el

(and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil nil ("base16-3024-theme.el" "base16-apathy-theme.el"
;;;;;;  "base16-apprentice-theme.el" "base16-ashes-theme.el" "base16-atelier-cave-light-theme.el"
;;;;;;  "base16-atelier-cave-theme.el" "base16-atelier-dune-light-theme.el"
;;;;;;  "base16-atelier-dune-theme.el" "base16-atelier-estuary-light-theme.el"
;;;;;;  "base16-atelier-estuary-theme.el" "base16-atelier-forest-light-theme.el"
;;;;;;  "base16-atelier-forest-theme.el" "base16-atelier-heath-light-theme.el"
;;;;;;  "base16-atelier-heath-theme.el" "base16-atelier-lakeside-light-theme.el"
;;;;;;  "base16-atelier-lakeside-theme.el" "base16-atelier-plateau-light-theme.el"
;;;;;;  "base16-atelier-plateau-theme.el" "base16-atelier-savanna-light-theme.el"
;;;;;;  "base16-atelier-savanna-theme.el" "base16-atelier-seaside-light-theme.el"
;;;;;;  "base16-atelier-seaside-theme.el" "base16-atelier-sulphurpool-light-theme.el"
;;;;;;  "base16-atelier-sulphurpool-theme.el" "base16-atlas-theme.el"
;;;;;;  "base16-bespin-theme.el" "base16-black-metal-bathory-theme.el"
;;;;;;  "base16-black-metal-burzum-theme.el" "base16-black-metal-dark-funeral-theme.el"
;;;;;;  "base16-black-metal-gorgoroth-theme.el" "base16-black-metal-immortal-theme.el"
;;;;;;  "base16-black-metal-khold-theme.el" "base16-black-metal-marduk-theme.el"
;;;;;;  "base16-black-metal-mayhem-theme.el" "base16-black-metal-nile-theme.el"
;;;;;;  "base16-black-metal-theme.el" "base16-black-metal-venom-theme.el"
;;;;;;  "base16-brewer-theme.el" "base16-bright-theme.el" "base16-brogrammer-theme.el"
;;;;;;  "base16-brushtrees-dark-theme.el" "base16-brushtrees-theme.el"
;;;;;;  "base16-chalk-theme.el" "base16-circus-theme.el" "base16-classic-dark-theme.el"
;;;;;;  "base16-classic-light-theme.el" "base16-codeschool-theme.el"
;;;;;;  "base16-cupcake-theme.el" "base16-cupertino-theme.el" "base16-danqing-theme.el"
;;;;;;  "base16-darcula-theme.el" "base16-darkmoss-theme.el" "base16-darktooth-theme.el"
;;;;;;  "base16-darkviolet-theme.el" "base16-decaf-theme.el" "base16-default-dark-theme.el"
;;;;;;  "base16-default-light-theme.el" "base16-dirtysea-theme.el"
;;;;;;  "base16-dracula-theme.el" "base16-edge-dark-theme.el" "base16-edge-light-theme.el"
;;;;;;  "base16-eighties-theme.el" "base16-embers-theme.el" "base16-equilibrium-dark-theme.el"
;;;;;;  "base16-equilibrium-gray-dark-theme.el" "base16-equilibrium-gray-light-theme.el"
;;;;;;  "base16-equilibrium-light-theme.el" "base16-espresso-theme.el"
;;;;;;  "base16-eva-dim-theme.el" "base16-eva-theme.el" "base16-flat-theme.el"
;;;;;;  "base16-framer-theme.el" "base16-fruit-soda-theme.el" "base16-gigavolt-theme.el"
;;;;;;  "base16-github-theme.el" "base16-google-dark-theme.el" "base16-google-light-theme.el"
;;;;;;  "base16-grayscale-dark-theme.el" "base16-grayscale-light-theme.el"
;;;;;;  "base16-greenscreen-theme.el" "base16-gruvbox-dark-hard-theme.el"
;;;;;;  "base16-gruvbox-dark-medium-theme.el" "base16-gruvbox-dark-pale-theme.el"
;;;;;;  "base16-gruvbox-dark-soft-theme.el" "base16-gruvbox-light-hard-theme.el"
;;;;;;  "base16-gruvbox-light-medium-theme.el" "base16-gruvbox-light-soft-theme.el"
;;;;;;  "base16-hardcore-theme.el" "base16-harmonic-dark-theme.el"
;;;;;;  "base16-harmonic-light-theme.el" "base16-heetch-light-theme.el"
;;;;;;  "base16-heetch-theme.el" "base16-helios-theme.el" "base16-hopscotch-theme.el"
;;;;;;  "base16-horizon-dark-theme.el" "base16-horizon-light-theme.el"
;;;;;;  "base16-horizon-terminal-dark-theme.el" "base16-horizon-terminal-light-theme.el"
;;;;;;  "base16-humanoid-dark-theme.el" "base16-humanoid-light-theme.el"
;;;;;;  "base16-ia-dark-theme.el" "base16-ia-light-theme.el" "base16-icy-theme.el"
;;;;;;  "base16-irblack-theme.el" "base16-isotope-theme.el" "base16-kimber-theme.el"
;;;;;;  "base16-macintosh-theme.el" "base16-marrakesh-theme.el" "base16-materia-theme.el"
;;;;;;  "base16-material-darker-theme.el" "base16-material-lighter-theme.el"
;;;;;;  "base16-material-palenight-theme.el" "base16-material-theme.el"
;;;;;;  "base16-material-vivid-theme.el" "base16-mellow-purple-theme.el"
;;;;;;  "base16-mexico-light-theme.el" "base16-mocha-theme.el" "base16-monokai-theme.el"
;;;;;;  "base16-nebula-theme.el" "base16-nord-theme.el" "base16-nova-theme.el"
;;;;;;  "base16-ocean-theme.el" "base16-oceanicnext-theme.el" "base16-one-light-theme.el"
;;;;;;  "base16-onedark-theme.el" "base16-outrun-dark-theme.el" "base16-papercolor-dark-theme.el"
;;;;;;  "base16-papercolor-light-theme.el" "base16-paraiso-theme.el"
;;;;;;  "base16-pasque-theme.el" "base16-phd-theme.el" "base16-pico-theme.el"
;;;;;;  "base16-pop-theme.el" "base16-porple-theme.el" "base16-railscasts-theme.el"
;;;;;;  "base16-rebecca-theme.el" "base16-rose-pine-dawn-theme.el"
;;;;;;  "base16-rose-pine-moon-theme.el" "base16-rose-pine-theme.el"
;;;;;;  "base16-sagelight-theme.el" "base16-sandcastle-theme.el"
;;;;;;  "base16-seti-theme.el" "base16-shapeshifter-theme.el" "base16-silk-dark-theme.el"
;;;;;;  "base16-silk-light-theme.el" "base16-snazzy-theme.el" "base16-solarflare-light-theme.el"
;;;;;;  "base16-solarflare-theme.el" "base16-solarized-dark-theme.el"
;;;;;;  "base16-solarized-light-theme.el" "base16-spacemacs-theme.el"
;;;;;;  "base16-summercamp-theme.el" "base16-summerfruit-dark-theme.el"
;;;;;;  "base16-summerfruit-light-theme.el" "base16-synth-midnight-dark-theme.el"
;;;;;;  "base16-synth-midnight-light-theme.el" "base16-tango-theme.el"
;;;;;;  "base16-tender-theme.el" "base16-theme-pkg.el" "base16-tomorrow-night-eighties-theme.el"
;;;;;;  "base16-tomorrow-night-theme.el" "base16-tomorrow-theme.el"
;;;;;;  "base16-tube-theme.el" "base16-twilight-theme.el" "base16-unikitty-dark-theme.el"
;;;;;;  "base16-unikitty-light-theme.el" "base16-vulcan-theme.el"
;;;;;;  "base16-windows-10-light-theme.el" "base16-windows-10-theme.el"
;;;;;;  "base16-windows-95-light-theme.el" "base16-windows-95-theme.el"
;;;;;;  "base16-windows-highcontrast-light-theme.el" "base16-windows-highcontrast-theme.el"
;;;;;;  "base16-windows-nt-light-theme.el" "base16-windows-nt-theme.el"
;;;;;;  "base16-woodland-theme.el" "base16-xcode-dusk-theme.el" "base16-zenburn-theme.el")
;;;;;;  (24765 27864 378364 985000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; base16-theme-autoloads.el ends here
