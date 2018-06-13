((ample-regexps status "installed" recipe
		(:name ample-regexps :description "Compose and reuse Emacs regular expressions with ease" :type github :pkgname "immerrr/ample-regexps.el"))
 (el-get status "required")
 (hide-comnt status "installed" recipe
	     (:type github :pkgname "emacsmirror/hide-comnt" :name hide-comnt :after nil :description "Hide/show comments in code." :type emacsmirror))
 (lua-mode status "installed" recipe
	   (:name lua-mode :description "A major-mode for editing Lua scripts" :depends
		  (ample-regexps)
		  :type github :pkgname "immerrr/lua-mode"))
 (undo-tree status "installed" recipe
	    (:name undo-tree :after nil :description "Treat undo history as a tree" :website "http://www.dr-qubit.org/emacs.php" :type git :url "http://www.dr-qubit.org/git/undo-tree.git/")))
