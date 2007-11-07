
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : text-kbd.scm
;; DESCRIPTION : basic keystrokes in text mode
;; COPYRIGHT   : (C) 1999  Joris van der Hoeven
;;
;; This software falls under the GNU general public license and comes WITHOUT
;; ANY WARRANTY WHATSOEVER. See the file $TEXMACS_PATH/LICENSE for details.
;; If you don't have this file, write to the Free Software Foundation, Inc.,
;; 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(texmacs-module (text text-kbd)
  (:use (utils edit auto-close)
	(text format-text-edit)))

(kbd-map
  (:mode in-text?)
  ("\"" (insert-quote))
  ("<" "<less>")
  (">" "<gtr>")
  ("< var" "")
  ("> var" "")
  ("< <" "")
  ("> >" "")
  (", ," "")
  ("sz" "�")
  ("- - -" (make 'emdash))
  ;;("- -" "")
  ;;("' '" "")
  ;;("` `" "")

  ("text:symbol s" "�")
  ("text:symbol S" "�")
  ("text:symbol a" "�")
  ("text:symbol a e" "�")
  ("text:symbol o" "�")
  ("text:symbol o e" "�")
  ("text:symbol A" "�")
  ("text:symbol A E" "�")
  ("text:symbol O" "�")
  ("text:symbol O E" "�")
  ("text:symbol !" "�")
  ("text:symbol ?" "�")
  ("text:symbol p" "�")
  ("text:symbol P" "�")
  ("text:symbol m" (make 'masculine))
  ("text:symbol M" (make 'varmasculine))
  ("text:symbol f" (make 'ordfeminine))
  ("text:symbol F" (make 'varordfeminine))

  ("accent:tilde" "~")
  ("accent:tilde space" "~")
  ("accent:tilde A" "�")
  ("accent:tilde N" "�")
  ("accent:tilde O" "�")
  ("accent:tilde a" "�")
  ("accent:tilde n" "�")
  ("accent:tilde o" "�")

  ("accent:hat" "^")
  ("accent:hat space" "^")
  ("accent:hat A" "�")
  ("accent:hat E" "�")
  ("accent:hat I" "�")
  ("accent:hat O" "�")
  ("accent:hat U" "�")
  ("accent:hat a" "�")
  ("accent:hat e" "�")
  ("accent:hat i" "�")
  ("accent:hat o" "�")
  ("accent:hat u" "�")
  ("accent:deadhat" "^")
  ("accent:deadhat space" "^")
  ("accent:deadhat A" "�")
  ("accent:deadhat E" "�")
  ("accent:deadhat I" "�")
  ("accent:deadhat O" "�")
  ("accent:deadhat U" "�")
  ("accent:deadhat a" "�")
  ("accent:deadhat e" "�")
  ("accent:deadhat i" "�")
  ("accent:deadhat o" "�")
  ("accent:deadhat u" "�")

  ("accent:umlaut" "")
  ("accent:umlaut space" "")
  ("accent:umlaut A" "�")
  ("accent:umlaut E" "�")
  ("accent:umlaut I" "�")
  ("accent:umlaut O" "�")
  ("accent:umlaut U" "�")
  ("accent:umlaut Y" "�")
  ("accent:umlaut a" "�")
  ("accent:umlaut e" "�")
  ("accent:umlaut i" "�")
  ("accent:umlaut o" "�")
  ("accent:umlaut u" "�")
  ("accent:umlaut y" "�")

  ("accent:acute" "'")
  ("accent:acute space" "'")
  ("accent:acute A" "�")
  ("accent:acute C" "�")
  ("accent:acute E" "�")
  ("accent:acute I" "�")
  ("accent:acute L" "�")
  ("accent:acute N" "�")
  ("accent:acute O" "�")
  ("accent:acute R" "�")
  ("accent:acute S" "�")
  ("accent:acute U" "�")
  ("accent:acute Y" "�")
  ("accent:acute Z" "�")
  ("accent:acute a" "�")
  ("accent:acute c" "�")
  ("accent:acute e" "�")
  ("accent:acute i" "�")
  ("accent:acute l" "�")
  ("accent:acute n" "�")
  ("accent:acute o" "�")
  ("accent:acute r" "�")
  ("accent:acute s" "�")
  ("accent:acute u" "�")
  ("accent:acute y" "�")
  ("accent:acute z" "�")

  ("accent:grave" "`")
  ("accent:grave space" "`")
  ("accent:grave A" "�")
  ("accent:grave E" "�")
  ("accent:grave I" "�")
  ("accent:grave O" "�")
  ("accent:grave U" "�")
  ("accent:grave a" "�")
  ("accent:grave e" "�")
  ("accent:grave i" "�")
  ("accent:grave o" "�")
  ("accent:grave u" "�")

  ("accent:cedilla" "")
  ("accent:cedilla space" "")
  ("accent:cedilla C" "�")
  ("accent:cedilla S" "�")
  ("accent:cedilla T" "�")
  ("accent:cedilla c" "�")
  ("accent:cedilla s" "�")
  ("accent:cedilla t" "�")

  ("accent:breve" "")
  ("accent:breve space" "")
  ("accent:breve A" "�")
  ("accent:breve G" "�")
  ("accent:breve a" "�")
  ("accent:breve g" "�")

  ("accent:check" "")
  ("accent:check space" "")
  ("accent:check C" "�")
  ("accent:check D" "�")
  ("accent:check E" "�")
  ("accent:check L" "�")
  ("accent:check N" "�")
  ("accent:check R" "�")
  ("accent:check S" "�")
  ("accent:check T" "�")
  ("accent:check U" "�")
  ("accent:check Z" "�")
  ("accent:check c" "�")
  ("accent:check d" "�")
  ("accent:check e" "�")
  ("accent:check l" "�")
  ("accent:check n" "�")
  ("accent:check r" "�")
  ("accent:check s" "�")
  ("accent:check t" "�")
  ("accent:check u" "�")
  ("accent:check z" "�")

  ("accent:doubleacute" "")
  ("accent:doubleacute space" "")
  ("accent:doubleacute O" "�")
  ("accent:doubleacute U" "�")
  ("accent:doubleacute o" "�")
  ("accent:doubleacute u" "�")

  ("accent:abovering" "")
  ("accent:abovering space" "")
  ("accent:abovering A" "�")
  ("accent:abovering U" "�")
  ("accent:abovering a" "�")
  ("accent:abovering u" "�")

  ("accent:abovedot" "
")
  ("accent:abovedot space" "
")
  ("accent:abovedot Z" "�")
  ("accent:abovedot I" "�")
  ("accent:abovedot z" "�")

  ("accent:ogonek" "")
  ("accent:ogonek space" "")
  ("accent:ogonek a" "�")
  ("accent:ogonek A" "�")
  ("accent:ogonek e" "�")
  ("accent:ogonek E" "�")

  ("exclamdown" "�")
  ("cent" (make 'cent))
  ("sterling" "�")
  ("currency" (make 'currency))
  ("yen" (make 'yen))
  ("section" "�")
  ("copyright" (make 'copyright))
  ("copyright var" (make 'copyleft))
  ("guillemotleft" "")
  ("registered" (make 'registered))
  ("degree" (make 'degreesign))
  ("twosuperior" (make 'twosuperior))
  ("threesuperior" (make 'threesuperior))
  ("mu" (make 'mu))
  ("paragraph" (make 'paragraphsign))
  ("onesuperior" (make 'onesuperior))
  ("guillemotright" "")
  ("onequarter" (make 'onequarter))
  ("onehalf" (make 'onehalf))
  ("threequarters" (make 'threequarters))
  ("questiondown" "�")
  ("euro" (make 'euro))
  ("masculine" (make 'masculine))
  ("ordfeminine" (make 'ordfeminine))
  ("masculine var" (make 'varmasculine))
  ("ordfeminine var" (make 'varordfeminine)))

(kbd-map
  (:mode in-german?)
  ("�" "�")
  ("�" "�"))

(kbd-map
  (:mode in-hungarian?)
  ("text:symbol O" "�")
  ("text:symbol U" "�")
  ("text:symbol o" "�")
  ("text:symbol u" "�"))

(kbd-map
  (:mode in-spanish?)
  ("�" "�")
  ("�" "�")
  ("! var" "�")
  ("? var" "�")
  ("! `" "�")
  ("? `" "�")
  ("! accent:grave" "�")
  ("? accent:grave" "�"))

(kbd-map
  (:mode in-polish?)
  ("text:symbol a" "�")
  ("text:symbol A" "�")
  ("text:symbol c" "�")
  ("text:symbol C" "�")
  ("text:symbol e" "�")
  ("text:symbol E" "�")
  ("text:symbol l" "�")
  ("text:symbol L" "�")
  ("text:symbol n" "�")
  ("text:symbol N" "�")
  ("text:symbol o" "�")
  ("text:symbol O" "�")
  ("text:symbol s" "�")
  ("text:symbol S" "�")
  ("text:symbol x" "�")
  ("text:symbol X" "�")
  ("text:symbol z" "�")
  ("text:symbol Z" "�")
  ("text:symbol z var" "�")
  ("text:symbol Z var" "�"))

(kbd-map
  (:mode in-cyrillic?)
  ("modeswitch" (make-with "language" "english") (make-with "font" "roman")))
