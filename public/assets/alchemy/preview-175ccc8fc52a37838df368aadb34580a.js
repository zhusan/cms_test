if (typeof(Alchemy) === 'undefined') {
  var Alchemy = {};
}

// Load jQuery on demand. Use this if jQuery is not present.
// Found on http://css-tricks.com/snippets/jquery/load-jquery-only-if-not-present/
Alchemy.loadjQuery = function(callback) {

  var thisPageUsingOtherJSLibrary = false;

  if (typeof($) === 'function') {
    thisPageUsingOtherJSLibrary = true;
  }

  function getScript(url, success) {
    var script = document.createElement('script');
    var head = document.getElementsByTagName('head')[0],
      done = false;
    script.src = url;
    // Attach handlers for all browsers
    script.onload = script.onreadystatechange = function() {
      if (!done && (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete')) {
        done = true;
        // callback function provided as param
        success();
        script.onload = script.onreadystatechange = null;
        head.removeChild(script);
      };
    };
    head.appendChild(script);
  }

  getScript('//code.jquery.com/jquery.min.js', function() {
    if (typeof(jQuery) !== 'undefined') {
      if (thisPageUsingOtherJSLibrary) {
        jQuery.noConflict();
      }
      callback(jQuery);
    }
  });

}
;
(function() {
  if (typeof Alchemy === "undefined") {
    window.Alchemy = {};
  }

  Alchemy.Browser = {
    isiPhone: navigator.userAgent.match(/iPhone/i) !== null,
    isiPad: navigator.userAgent.match(/iPad/i) !== null,
    isiPod: navigator.userAgent.match(/iPod/i) !== null,
    isiOS: navigator.userAgent.match(/iPad|iPhone|iPod/i) !== null,
    isFirefox: navigator.userAgent.match(/Firefox/i) !== null,
    isChrome: navigator.userAgent.match(/Chrome/i) !== null,
    isSafari: navigator.userAgent.match(/AppleWebKit/) && !navigator.userAgent.match(/Chrome/),
    isIE: navigator.userAgent.match(/MSIE/i) !== null,
    getVersion: function(browser) {
      if (Alchemy.Browser["is" + browser]) {
        return parseInt(navigator.userAgent.match(new RegExp(browser + ".[0-9]+", "i"))[0].replace(new RegExp(browser + "."), ""), 10);
      } else {
        return null;
      }
    }
  };

  Alchemy.Browser.ChromeVersion = Alchemy.Browser.getVersion("Chrome");

  Alchemy.Browser.FirefoxVersion = Alchemy.Browser.getVersion("Firefox");

  Alchemy.Browser.SafariVersion = Alchemy.Browser.getVersion("Safari");

  Alchemy.Browser.IEVersion = Alchemy.Browser.getVersion("MSIE");

  Alchemy.Browser.isWebKit = Alchemy.Browser.isChrome || Alchemy.Browser.isSafari;

}).call(this);
(function() {
  if (typeof window.Alchemy === 'undefined') {
    window.Alchemy = {};
  }

  Alchemy.translations = {
    page_dirty_notice: {
      en: "You have unsaved changes on this page. They will be lost if you continue.",
      de: "Sie haben ungesicherte Änderungen auf der Seite. Diese gehen verloren, wenn Sie fortfahren.",
      nl: "Er zijn wijzigingen op deze pagina aangebracht. Deze gaan verloren als u doorgaat."
    },
    element_dirty_notice: {
      en: "This element has unsaved changes. Do you really want to fold it?",
      de: "Dieses Element hat nicht gespeicherte Änderungen. Möchten Sie es wirklich einklappen?",
      nl: "Dit element bevat niet opgeslagen wijzigingen. Wilt u dit echt inklappen?"
    },
    warning: {
      en: 'Warning!',
      de: 'Achtung!',
      nl: 'Waarschuwing!'
    },
    ok: {
      en: 'Ok',
      de: 'Ok',
      nl: 'Ok'
    },
    cancel: {
      en: 'Cancel',
      de: 'Abbrechen',
      nl: 'Annuleren'
    },
    browse: {
      de: "durchsuchen",
      en: "browse",
      nl: "bladeren"
    },
    pending: {
      de: "Wartend...",
      en: "Pending...",
      nl: "Bezig..."
    },
    uploading: {
      de: "Ladend...",
      en: "Uploading...",
      nl: "Uploaden..."
    },
    remaining: {
      de: " verbleibend.",
      en: " remaining.",
      nl: " over."
    },
    complete: {
      de: "Abgeschlossen",
      en: "Complete",
      nl: "Klaar"
    },
    cancelled: {
      de: "Abgebrochen",
      en: "Cancelled",
      nl: "Afgebroken"
    },
    stopped: {
      de: "Gestoppt",
      en: "Stopped",
      nl: "Gestopt"
    },
    upload_failed: {
      de: "Fehlgeschlagen!",
      en: "Upload Failed!",
      nl: "Upload gestopt!"
    },
    file_too_big: {
      de: "Datei ist zu groß!",
      en: "File is too big!",
      nl: "Bestand is te groot!"
    },
    upload_limit_exceeded: {
      de: "Maximales Dateilimit erreicht.",
      en: "Upload limit exceeded.",
      nl: "Uploadlimiet bereikt."
    },
    validation_failed: {
      de: "Validierung fehlgeschlagen. Ladevorgang angehalten.",
      en: "Failed Validation. Upload skipped.",
      nl: "Validatiefout. Upload is stopgezet."
    },
    zero_byte_file: {
      de: "Datei hat keinen Inhalt!",
      en: "Cannot upload Zero Byte files!",
      nl: "Bestand is leeg!"
    },
    invalid_file: {
      de: "Ungültiger Dateityp!",
      en: "Invalid File Type!",
      nl: "Ongeldig bestandstype!"
    },
    unknown_error: {
      de: "Unbekannter Fehler!",
      en: "Unhandled Error!",
      nl: "Onbekende fout!"
    },
    drag_files_notice: {
      de: "Oder ziehen Sie die Dateien hier rauf",
      en: "Or drag files over here",
      nl: "Of sleep bestanden hier naartoe"
    },
    drop_files_notice: {
      de: "Lassen Sie die Dateien nun los",
      en: "Now drop the files",
      nl: "Laat nu de bestanden los"
    },
    queued_files_notice: {
      de: "x Dateien in der Warteschlange.",
      en: "Queued x files.",
      nl: "x bestanden in de wachtrij gezet."
    },
    success_notice: {
      de: "x Dateien hochgeladen.",
      en: "Uploaded x files.",
      nl: "x bestanden geupload."
    },
    url_validation_failed: {
      de: 'Die URL hat kein gültiges Format.',
      en: 'The url has no valid format.',
      nl: 'De url heeft geen geldig formaat.'
    },
    click_to_edit: {
      de: 'Klicken zum Bearbeiten',
      en: 'click to edit',
      nl: 'klik om aan te passen'
    },
    help: {
      de: 'Hilfe',
      en: 'Help',
      en: 'Hulp'
    }
  };

}).call(this);
(function() {
  if (typeof window.Alchemy === 'undefined') {
    window.Alchemy = {};
  }

  Alchemy.I18n = {
    translate: function(id) {
      var translation;
      if (Alchemy.locale == null) {
        throw 'Alchemy.locale is not set! Please set Alchemy.locale to a locale string in order to translate something.';
      }
      translation = Alchemy.translations[id];
      if (translation) {
        return translation[Alchemy.locale];
      } else {
        return id;
      }
    }
  };

  Alchemy._t = function(id) {
    return Alchemy.I18n.translate(id);
  };

}).call(this);
(function() {
  if (typeof Alchemy === 'undefined') {
    window.Alchemy = {};
  }

  Alchemy.initAlchemyPreviewMode = function($) {
    $.fx.speeds._default = 400;
    $.extend(Alchemy, {
      ElementSelector: {
        scrollOffset: 20,
        styles: {
          reset: {
            outline: "",
            "outline-offset": "",
            "-moz-outline-radius": ""
          },
          default_hover: {
            outline: "3px solid #F0B437",
            "outline-offset": "4px",
            cursor: "pointer"
          },
          webkit_hover: {
            outline: "4px auto #F0B437"
          },
          moz_hover: {
            "-moz-outline-radius": "3px"
          },
          default_selected: {
            outline: "3px solid #90B9D0",
            "outline-offset": "4px"
          },
          webkit_selected: {
            outline: "4px auto #90B9D0"
          },
          moz_selected: {
            "-moz-outline-radius": "3px"
          }
        },
        init: function() {
          var $elements;
          $elements = $("[data-alchemy-element]");
          this.$previewElements = $elements;
          $elements.mouseover((function(_this) {
            return function(e) {
              var $el;
              $el = $(e.delegateTarget);
              $el.attr("title", Alchemy._t('click_to_edit'));
              if (!$el.hasClass("selected")) {
                return $el.css(_this.getStyle("hover"));
              }
            };
          })(this));
          $elements.mouseout((function(_this) {
            return function(e) {
              var $el;
              $el = $(e.delegateTarget);
              $el.removeAttr("title");
              if (!$el.hasClass("selected")) {
                return $el.css(_this.getStyle("reset"));
              }
            };
          })(this));
          $elements.on("Alchemy.SelectElement", (function(_this) {
            return function(e) {
              return _this.selectElement(e);
            };
          })(this));
          return $elements.click((function(_this) {
            return function(e) {
              return _this.clickElement(e);
            };
          })(this));
        },
        selectElement: function(e) {
          var $el, $elements, offset;
          $el = $(e.delegateTarget);
          $elements = this.$previewElements;
          offset = this.scrollOffset;
          e.preventDefault();
          $elements.removeClass("selected").css(this.getStyle("reset"));
          $el.addClass("selected").css(this.getStyle("selected"));
          $("html, body").animate({
            scrollTop: $el.offset().top - offset,
            scrollLeft: $el.offset().left - offset
          }, 400);
        },
        clickElement: function(e) {
          var $el, $element_editor, elementsWindow, parent$, target_id;
          $el = $(e.delegateTarget);
          parent$ = window.parent.jQuery;
          target_id = $el.data("alchemy-element");
          $element_editor = parent$("#element_area .element_editor").closest("[id=\"element_" + target_id + "\"]");
          elementsWindow = window.parent.Alchemy.ElementsWindow;
          e.preventDefault();
          $element_editor.trigger("Alchemy.SelectElementEditor", target_id);
          if (elementsWindow.hidden) {
            elementsWindow.show();
          }
          $el.trigger("Alchemy.SelectElement");
        },
        getStyle: function(state) {
          var browser, default_state_style;
          if (state === "reset") {
            return this.styles["reset"];
          } else {
            default_state_style = this.styles["default_" + state];
            if (Alchemy.Browser.isWebKit) {
              browser = "webkit";
            }
            if (Alchemy.Browser.isFirefox) {
              browser = "moz";
            }
            if (browser) {
              return $.extend(default_state_style, this.styles["" + browser + "_" + state]);
            } else {
              return default_state_style;
            }
          }
        }
      }
    });
    return Alchemy.ElementSelector.init();
  };

  if (typeof jQuery === 'undefined') {
    Alchemy.loadjQuery(Alchemy.initAlchemyPreviewMode);
  } else {
    Alchemy.initAlchemyPreviewMode(jQuery);
  }

}).call(this);
