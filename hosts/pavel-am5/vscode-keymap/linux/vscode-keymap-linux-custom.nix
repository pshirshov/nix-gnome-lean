let
  PageUp = "meta+[ArrowUp]";
  PageDown = "meta+[ArrowDown]";

  FullHome = "meta+[ArrowLeft]";
  Begin2 = "ctrl+[KeyA]";

  FullEnd = "meta+[ArrowRight]";
  End2 = "ctrl+[KeyE]";
in
[
  #
  {
    command = "editor.action.selectAll";
    key = "ctrl+[KeyK] ctrl+[KeyA]";
  }
  {
    command = "redo";
    key = "ctrl+shift+z";
  }
  {
    command = "redo";
    key = "ctrl+[KeyY]";
  }
  {
    command = "undo";
    key = "ctrl+[KeyZ]";
  }
  {
    command = "editor.action.clipboardCopyAction";
    key = "ctrl+[KeyC]";
  }
  {
    command = "editor.action.clipboardCutAction";
    key = "ctrl+[KeyX]";
  }
  {
    command = "editor.action.clipboardPasteAction";
    key = "ctrl+[KeyV]";
  }

  # {
  #   command = "editor.action.toggleTabFocusMode";
  #   key = "ctrl+[KeyM]";
  # }

  {
    command = "editor.action.toggleWordWrap";
    key = "ctrl+[KeyM] ctrl+[KeyW]";
  }

  {
    command = "editor.action.toggleOvertypeInsertMode";
    key = "insert";
  }
  {
    command = "editor.action.toggleOvertypeInsertMode";
    key = "ctrl+[KeyM] ctrl+[KeyO]";
  }

  # {
  #   command = "welcome.showNewFileEntries";
  #   key = "ctrl+alt+meta+n";
  # }
  {

    command = "workbench.action.closeActiveEditor";
    key = "ctrl+[KeyW]";
  }
  {
    command = "workbench.action.closeAllEditors";
    key = "ctrl+[KeyK] ctrl+[KeyW]";
  }
  {
    command = "workbench.action.closeWindow";
    key = "ctrl+shift+w";
  }

  # {
  #   command = "workbench.action.files.copyPathOfActiveFile";
  #   key = "ctrl+[KeyK] p";
  # }
  {
    command = "workbench.action.files.newUntitledFile";
    key = "ctrl+[KeyK] ctrl+[KeyN]";
  }

  {
    command = "workbench.action.files.revealActiveFileInWindows";
    key = "ctrl+[KeyK] ctrl+[KeyF]";
  }
  # {
  #   command = "revealFileInOS";
  #   key = "ctrl+alt+r";
  #   when = "!editorFocus";
  # }

  {
    command = "workbench.action.files.save";
    key = "ctrl+[KeyS]";
  }

  {
    command = "workbench.action.findInFiles";
    key = "ctrl+shift+[KeyF]";
  }
  {
    command = "workbench.action.replaceInFiles";
    key = "ctrl+shift+[KeyR]";
  }

  {
    command = "workbench.action.gotoLine";
    key = "ctrl+[KeyN] ctrl+[KeyL]";
  }

  {
    command = "workbench.action.navigateToLastEditLocation";
    key = "ctrl+[KeyN] ctrl+[KeyP]";
  }
  # {
  #   command = "workbench.action.newWindow";
  #   key = "ctrl+shift+n";
  # }
  {
    command = "workbench.action.openRecent";
    key = "ctrl+[KeyN] ctrl+[KeyR]";
  }
  {
    command = "workbench.action.quickOpen";
    key = "ctrl+[KeyN] ctrl+[KeyF]";
  }


  {
    command = "workbench.action.openSettings";
    key = "ctrl+,";
  }


  {
    command = "workbench.action.quit";
    key = "ctrl+[KeyQ]";
  }

  {
    command = "workbench.action.reopenClosedEditor";
    key = "ctrl+shift+t";
  }

  {
    command = "workbench.action.showAllEditors";
    key = "ctrl+[KeyN] ctrl+[KeyE]";
  }
  # {
  #   command = "workbench.action.showAllSymbols";
  #   key = "ctrl+[KeyT]";
  # }
  {
    command = "workbench.action.showCommands";
    key = "ctrl+shift+p";
  }
  {
    command = "workbench.action.showCommands";
    key = "ctrl+[KeyN] ctrl+[KeyA]";
  }

  {
    command = "workbench.action.splitEditor";
    key = "ctrl+[KeyK] ctrl+[KeyV]";
  }
  {
    command = "workbench.action.togglePanel";
    key = "ctrl+[KeyM] ctrl+[KeyP]";
  }
  {
    command = "workbench.action.toggleSidebarVisibility";
    key = "ctrl+[KeyM] ctrl+[KeyS]";
  }
  {
    command = "workbench.action.terminal.toggleTerminal";
    key = "ctrl+`";
  }
  {
    command = "workbench.action.terminal.toggleTerminal";
    key = "ctrl+[KeyM] ctrl+[KeyT]";
  }

  {
    command = "workbench.action.zoomIn";
    key = "ctrl+=";
  }
  {
    command = "workbench.action.zoomOut";
    key = "ctrl+-";
  }
  {
    command = "workbench.action.zoomReset";
    key = "ctrl+[Key0]";
  }

  {
    command = "workbench.files.action.compareWithClipboard";
    key = "ctrl+[KeyK] ctrl+[KeyC]";
  }

  #
  {
    command = "outdent";
    key = "shift+tab";
    when = "editorTextFocus && !editorReadonly && !editorTabMovesFocus";
  }
  {
    command = "editor.action.cancelSelectionAnchor";
    key = "escape";
    when = "editorTextFocus && selectionAnchorSet";
  }

  {
    command = "editor.action.triggerParameterHints";
    key = "ctrl+shift+space";
    when = "editorHasSignatureHelpProvider && editorTextFocus";
  }
  {
    command = "editor.action.wordHighlight.next";
    key = "f7";
    when = "editorTextFocus && hasWordHighlights";
  }
  {
    command = "editor.action.wordHighlight.prev";
    key = "shift+f7";
    when = "editorTextFocus && hasWordHighlights";
  }
  {
    command = "workbench.action.editor.nextChange";
    key = "alt+f5";
    when = "editorTextFocus && !textCompareEditorActive";
  }

  {
    command = "editor.action.goToImplementation";
    key = "ctrl+f12";
    when = "editorHasImplementationProvider && editorTextFocus";
  }
  {
    command = "editor.action.goToReferences";
    key = "shift+f12";
    when =
      "editorHasReferenceProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor";
  }

  {
    command = "closeReferenceSearch";
    key = "escape";
    when =
      "editorTextFocus && referenceSearchVisible && !config.editor.stablePeek || referenceSearchVisible && !config.editor.stablePeek && !inputFocus";
  }


  # {
  #   command = "workbench.action.interactivePlayground.arrowDown";
  #   key = "down";
  #   when = "interactivePlaygroundFocus && !editorTextFocus";
  # }
  # {
  #   command = "workbench.action.interactivePlayground.arrowUp";
  #   key = "up";
  #   when = "interactivePlaygroundFocus && !editorTextFocus";
  # }
  # {
  #   command = "workbench.action.interactivePlayground.pageDown";
  #   key = "pagedown";
  #   when = "interactivePlaygroundFocus && !editorTextFocus";
  # }
  # {
  #   command = "workbench.action.interactivePlayground.pageUp";
  #   key = "pageup";
  #   when = "interactivePlaygroundFocus && !editorTextFocus";
  # }


  # {
  #   command = "tab";
  #   key = "tab";
  #   when = "editorTextFocus && !editorReadonly && !editorTabMovesFocus";
  # }

  # {
  #   command = "editor.action.selectFromAnchorToCursor";
  #   key = "ctrl+[KeyK] ctrl+[KeyK]";
  #   when = "editorTextFocus && selectionAnchorSet";
  # }
  # {
  #   command = "editor.action.setSelectionAnchor";
  #   key = "ctrl+[KeyK] ctrl+[KeyB]";
  #   when = "editorTextFocus";
  # }

  # {
  #   command = "editor.action.showHover";
  #   key = "ctrl+[KeyK] ctrl+[KeyI]";
  #   when = "editorTextFocus";
  # }

  # {
  #   command = "editor.action.smartSelect.expand";
  #   key = "shift+alt+right";
  #   when = "editorTextFocus";
  # }
  # {
  #   command = "editor.action.smartSelect.shrink";
  #   key = "shift+alt+left";
  #   when = "editorTextFocus";
  # }

  # {
  #   command = "workbench.action.editor.previousChange";
  #   key = "shift+alt+f5";
  #   when = "editorTextFocus && !textCompareEditorActive";
  # }
  # {
  #   command = "editor.detectLanguage";
  #   key = "shift+alt+d";
  #   when = "editorTextFocus && !notebookEditable";
  # }

  #
  {
    command = "quickInput.first";
    key = "home";
    when = "inQuickInput && quickInputType == 'quickPick'";
  }
  {
    command = "quickInput.first";
    key = FullHome;
    when = "inQuickInput && quickInputType == 'quickPick'";
  }

  {
    command = "quickInput.last";
    key = "end";
    when = "inQuickInput && quickInputType == 'quickPick'";
  }
  {
    command = "quickInput.last";
    key = FullEnd;
    when = "inQuickInput && quickInputType == 'quickPick'";
  }


  {
    command = "quickInput.pageNext";
    key = "pagedown";
    when = "inQuickInput && quickInputType == 'quickPick'";
  }
  {
    command = "quickInput.pageNext";
    key = PageDown;
    when = "inQuickInput && quickInputType == 'quickPick'";
  }

  {
    command = "quickInput.pagePrevious";
    key = "pageup";
    when = "inQuickInput && quickInputType == 'quickPick'";
  }
  {
    command = "quickInput.pagePrevious";
    key = PageUp;
    when = "inQuickInput && quickInputType == 'quickPick'";
  }

  {
    command = "quickInput.next";
    key = "down";
    when = "inQuickInput && quickInputType == 'quickPick'";
  }
  {
    command = "quickInput.previous";
    key = "up";
    when = "inQuickInput && quickInputType == 'quickPick'";
  }
  {
    command = "quickInput.acceptInBackground";
    key = "right";
    when =
      "cursorAtEndOfQuickInputBox && inQuickInput && quickInputType == 'quickPick' || inQuickInput && !inputFocus && quickInputType == 'quickPick'";
  }

  #
  {
    command = "cursorHome";
    key = "home";
    when = "textInputFocus";
  }
  {
    command = "cursorHome";
    key = Begin2;
    when = "textInputFocus";
  }

  {
    args = { sticky = false; };
    command = "cursorEnd";
    key = "end";
    when = "textInputFocus";
  }
  {
    args = { sticky = false; };
    command = "cursorEnd";
    key = End2;
    when = "textInputFocus";
  }

  #
  {
    command = "cursorPageDown";
    key = "pagedown";
    when = "textInputFocus";
  }
  {
    command = "cursorPageDown";
    key = PageDown;
    when = "textInputFocus";
  }
  {
    command = "cursorPageUp";
    key = "pageup";
    when = "textInputFocus";
  }
  {
    command = "cursorPageUp";
    key = PageUp;
    when = "textInputFocus";
  }

  #
  {
    command = "cursorWordEndRight";
    key = "alt+right";
    when = "textInputFocus";
  }
  {
    command = "cursorWordLeft";
    key = "alt+left";
    when = "textInputFocus";
  }

  {
    command = "cursorWordEndRightSelect";
    key = "shift+alt+right";
    when = "textInputFocus";
  }
  {
    command = "cursorWordLeftSelect";
    key = "shift+alt+left";
    when = "textInputFocus";
  }

  {
    command = "deleteWordLeft";
    key = "alt+backspace";
    when = "textInputFocus && !editorReadonly";
  }

  {
    command = "editor.action.deleteLines";
    key = "ctrl+backspace";
    when = "textInputFocus && !editorReadonly";

  }

  #
  {
    command = "editor.action.quickFix";
    key = "ctrl+.";
    when = "editorHasCodeActionsProvider && textInputFocus && !editorReadonly";
  }
  {
    command = "editor.action.autoFix";
    key = "ctrl+shift+.";
    when =
      "textInputFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)quickfix\\b/";
  }
  {
    command = "editor.action.refactor";
    key = "ctrl+[KeyT] ctrl+[KeyT]";
    when = "editorHasCodeActionsProvider && textInputFocus && !editorReadonly";
  }
  {
    command = "editor.action.formatDocument";
    key = "ctrl+[KeyT] ctrl+[KeyF]";
    when =
      "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
  }
  {
    command = "editor.action.formatDocument.none";
    key = "ctrl+[KeyT] ctrl+[KeyF]";
    when =
      "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly";
  }

  #
  {
    command = "editor.action.copyLinesDownAction";
    key = "ctrl+[KeyD]";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.copyLinesDownAction";
    key = "meta+[KeyD]";
    when = "editorTextFocus && !editorReadonly";
  }

  #
  {
    command = "editor.action.revealDefinition";
    key = "ctrl+[KeyN] ctrl+[KeyD]";
    when = "editorHasDefinitionProvider && editorTextFocus";
  }
  {
    command = "editor.action.revealDefinitionAside";
    key = "ctrl+[KeyK] ctrl+[KeyD]";
    when =
      "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor";
  }

  #
  {
    command = "editor.action.blockComment";
    key = "ctrl+shift+[Slash]";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.blockComment";
    key = "meta+shift+[Slash]";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.commentLine";
    key = "ctrl+/";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.commentLine";
    key = "meta+[Slash]";
    when = "editorTextFocus && !editorReadonly";
  }

  #
  {
    command = "editor.action.insertCursorAbove";
    key = "ctrl+shift+up";
    when = "editorTextFocus";
  }
  {
    command = "editor.action.insertCursorBelow";
    key = "ctrl+shift+down";
    when = "editorTextFocus";
  }

  #
  {
    command = "editor.action.insertLineAfter";
    key = "ctrl+enter";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.insertLineBefore";
    key = "ctrl+shift+enter";
    when = "editorTextFocus && !editorReadonly";
  }

  #
  {
    command = "editor.action.moveLinesDownAction";
    key = "shift+alt+down";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.moveLinesUpAction";
    key = "shift+alt+up";
    when = "editorTextFocus && !editorReadonly";
  }

  #
  {
    command = "editor.action.rename";
    key = "ctrl+[KeyT] ctrl+[KeyR]";
    when = "editorHasRenameProvider && editorTextFocus && !editorReadonly";
  }

  #
  {
    command = "editor.action.indentLines";
    key = "tab";
    when = "editorTextFocus && !editorReadonly";
  }
  {
    command = "editor.action.outdentLines";
    key = "shift+tab";
    when = "editorTextFocus && !editorReadonly";
  }


]
