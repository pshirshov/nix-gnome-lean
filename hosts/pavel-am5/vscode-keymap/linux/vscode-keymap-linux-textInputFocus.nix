[
  {
    command = "cancelSelection";
    key = "escape";
    when = "editorHasSelection && textInputFocus";
  }
  {
    command = "cursorBottom";
    key = "ctrl+end";
    when = "textInputFocus";
  }
  {
    command = "cursorBottomSelect";
    key = "ctrl+shift+end";
    when = "textInputFocus";
  }
  {
    command = "cursorDown";
    key = "down";
    when = "textInputFocus";
  }
  {
    command = "cursorDownSelect";
    key = "shift+down";
    when = "textInputFocus";
  }

  {
    args = { sticky = false; };
    command = "cursorEndSelect";
    key = "shift+end";
    when = "textInputFocus";
  }



  {
    command = "cursorHomeSelect";
    key = "shift+home";
    when = "textInputFocus";
  }
  {
    command = "cursorLeft";
    key = "left";
    when = "textInputFocus";
  }

  {
    command = "cursorPageDownSelect";
    key = "shift+pagedown";
    when = "textInputFocus";
  }
  {
    command = "cursorPageUpSelect";
    key = "shift+pageup";
    when = "textInputFocus";
  }
  {
    command = "cursorPageDownSelect";
    key = "meta+shift+down";
    when = "textInputFocus";
  }
  {
    command = "cursorPageUpSelect";
    key = "meta+shift+up";
    when = "textInputFocus";
  }

  {
    command = "cursorLeftSelect";
    key = "shift+left";
    when = "textInputFocus";
  }

  {
    command = "cursorRight";
    key = "right";
    when = "textInputFocus";
  }
  {
    command = "cursorRightSelect";
    key = "shift+right";
    when = "textInputFocus";
  }
  {
    command = "cursorTop";
    key = "ctrl+home";
    when = "textInputFocus";
  }
  {
    command = "cursorTopSelect";
    key = "ctrl+shift+home";
    when = "textInputFocus";
  }
  {
    command = "cursorUp";
    key = "up";
    when = "textInputFocus";
  }
  {
    command = "cursorUpSelect";
    key = "shift+up";
    when = "textInputFocus";
  }
  {
    command = "deleteLeft";
    key = "shift+backspace";
    when = "textInputFocus";
  }
  {
    command = "deleteLeft";
    key = "backspace";
    when = "textInputFocus";
  }
  {
    command = "deleteRight";
    key = "delete";
    when = "textInputFocus";
  }
  # {
  #   command = "expandLineSelection";
  #   key = "ctrl+[KeyL]";
  #   when = "textInputFocus";
  # }

  # {
  #   command = "scrollLineDown";
  #   key = "ctrl+down";
  #   when = "textInputFocus";
  # }
  # {
  #   command = "scrollLineUp";
  #   key = "ctrl+up";
  #   when = "textInputFocus";
  # }
  # {
  #   command = "scrollPageDown";
  #   key = "alt+pagedown";
  #   when = "textInputFocus";
  # }
  # {
  #   command = "scrollPageUp";
  #   key = "alt+pageup";
  #   when = "textInputFocus";
  # }

  {
    command = "cursorColumnSelectDown";
    key = "shift+down";
    when = "editorColumnSelection && textInputFocus";
  }
  {
    command = "cursorColumnSelectLeft";
    key = "shift+left";
    when = "editorColumnSelection && textInputFocus";
  }
  {
    command = "cursorColumnSelectPageDown";
    key = "shift+pagedown";
    when = "editorColumnSelection && textInputFocus";
  }
  {
    command = "cursorColumnSelectPageUp";
    key = "shift+pageup";
    when = "editorColumnSelection && textInputFocus";
  }
  {
    command = "cursorColumnSelectRight";
    key = "shift+right";
    when = "editorColumnSelection && textInputFocus";
  }
  {
    command = "cursorColumnSelectUp";
    key = "shift+up";
    when = "editorColumnSelection && textInputFocus";
  }
  {
    command = "removeSecondaryCursors";
    key = "shift+escape";
    when = "editorHasMultipleSelections && textInputFocus";
  }
  {
    command = "removeSecondaryCursors";
    key = "escape";
    when = "editorHasMultipleSelections && textInputFocus";
  }
  {
    command = "closeBreakpointWidget";
    key = "escape";
    when = "breakpointWidgetVisible && textInputFocus";
  }
  # {
  #   command = "cursorUndo";
  #   key = "ctrl+[KeyU]";
  #   when = "textInputFocus";
  # }




  # {
  #   command = "deleteWordRight";
  #   key = "ctrl+delete";
  #   when = "textInputFocus && !editorReadonly";
  # }


  # {
  #   command = "editor.action.organizeImports";
  #   key = "shift+alt+o";
  #   when =
  #     "textInputFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/";
  # }


  {
    command = "editor.action.triggerSuggest";
    key = "ctrl+space";
    when =
      "editorHasCompletionItemProvider && textInputFocus && !editorReadonly && !suggestWidgetVisible";
  }


  # {
  #   command = "editor.action.showContextMenu";
  #   key = "shift+f10";
  #   when = "textInputFocus";
  # }

  {
    command = "repl.action.acceptInput";
    key = "enter";
    when = "inDebugRepl && textInputFocus";
  }
  {
    command = "repl.action.filter";
    key = "ctrl+[KeyF]";
    when = "inDebugRepl && textInputFocus";
  }
  {
    command = "jumpToNextSnippetPlaceholder";
    key = "tab";
    when = "hasNextTabstop && inSnippetMode && textInputFocus";
  }
  {
    command = "jumpToPrevSnippetPlaceholder";
    key = "shift+tab";
    when = "hasPrevTabstop && inSnippetMode && textInputFocus";
  }
  {
    command = "leaveSnippet";
    key = "shift+escape";
    when = "inSnippetMode && textInputFocus";
  }
  {
    command = "leaveSnippet";
    key = "escape";
    when = "inSnippetMode && textInputFocus";
  }
  # {
  #   command = "acceptAlternativeSelectedSuggestion";
  #   key = "shift+tab";
  #   when =
  #     "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
  # }
  # {
  #   command = "acceptAlternativeSelectedSuggestion";
  #   key = "shift+enter";
  #   when =
  #     "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
  # }
  # {
  #   command = "acceptSelectedSuggestion";
  #   key = "tab";
  #   when =
  #     "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
  # }
  {
    command = "acceptSelectedSuggestion";
    key = "enter";
    when =
      "acceptSuggestionOnEnter && suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && suggestionMakesTextEdit && textInputFocus";
  }
  # {
  #   command = "focusSuggestion";
  #   key = "ctrl+[KeyI]";
  #   when =
  #     "suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  # }
  {
    command = "focusSuggestion";
    key = "ctrl+space";
    when =
      "suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  }
  # {
  #   command = "hideSuggestWidget";
  #   key = "shift+escape";
  #   when = "suggestWidgetVisible && textInputFocus";
  # }
  {
    command = "hideSuggestWidget";
    key = "escape";
    when = "suggestWidgetVisible && textInputFocus";
  }
  # {
  #   command = "insertBestCompletion";
  #   key = "tab";
  #   when =
  #     "atEndOfWord && textInputFocus && !hasOtherSuggestions && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
  # }
  # {
  #   command = "insertNextSuggestion";
  #   key = "tab";
  #   when =
  #     "hasOtherSuggestions && textInputFocus && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
  # }
  # {
  #   command = "insertPrevSuggestion";
  #   key = "shift+tab";
  #   when =
  #     "hasOtherSuggestions && textInputFocus && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
  # }
  # {
  #   command = "selectNextPageSuggestion";
  #   key = "ctrl+pagedown";
  #   when =
  #     "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  # }
  {
    command = "selectNextPageSuggestion";
    key = "pagedown";
    when =
      "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  }
  # {
  #   command = "selectNextSuggestion";
  #   key = "ctrl+down";
  #   when =
  #     "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  # }
  {
    command = "selectNextSuggestion";
    key = "down";
    when =
      "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  }
  # {
  #   command = "selectPrevPageSuggestion";
  #   key = "ctrl+pageup";
  #   when =
  #     "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  # }
  {
    command = "selectPrevPageSuggestion";
    key = "pageup";
    when =
      "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  }
  # {
  #   command = "selectPrevSuggestion";
  #   key = "ctrl+up";
  #   when =
  #     "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  # }
  {
    command = "selectPrevSuggestion";
    key = "up";
    when =
      "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus || suggestWidgetVisible && textInputFocus && !suggestWidgetHasFocusedSuggestion";
  }
  # {
  #   command = "toggleSuggestionDetails";
  #   key = "ctrl+[KeyI]";
  #   when =
  #     "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
  # }
  {
    command = "toggleSuggestionDetails";
    key = "ctrl+space";
    when =
      "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
  }
  # {
  #   command = "toggleSuggestionFocus";
  #   key = "ctrl+alt+space";
  #   when = "suggestWidgetVisible && textInputFocus";
  # }

]
