/*!
 * remark (http://getbootstrapadmin.com/remark)
 * Copyright 2016 amazingsurge
 * Licensed under the Themeforest Standard Licenses
 */
(function(document, window, $) {
  'use strict';

  var Site = window.Site;

  $(document).ready(function($) {
    Site.run();
  });

  window.edit = function(botao) {
    var container = botao.parents(".grid-stack-item-content");
    var title = container.find(".panel-heading");
    var box = container.find(".panel-body");
    var editIcon = title.find("a.wb-edit");

    box.summernote({ shortcuts: false, toolbar : [
           ['group', [ 'iframe' ]]
      ],
        oninit: function() {
          // Se já não tiver sido inserido um botão de salvar nesta widget
          if($(".note-toolbar").has(".btn-salvar").length == 0){
            // HTML do botão
            var noteBtn = '<button type="button" class="btn btn-outline btn-primary btn-salvar">Save</button>';
            var fileGroup = '<div class="note-file btn-group">' + noteBtn + '</div>';

            $(fileGroup).appendTo($('.note-toolbar'));

            $( ".btn-salvar" ).on( "click", function( event ) {
              var widget = $( this ).parent().parent().parent().parent().children(".click2edit")
              save_text_widget(widget);
              toggleGridEditable(editIcon.get(0));
            });
          }

        }
      
      });
    var editbox = botao.parents(".grid-stack-item-content").find(".note-editable");
    var toolbar = botao.parents(".grid-stack-item-content").find(".note-toolbar");
    editbox.height( container.height() - title.height() - toolbar.height() - 60.0);
  };
  window.save = function(botao) {
    var box = botao.parents(".grid-stack-item-content").find(".panel-body")


    box.destroy();
  };

    window.finish = function(botao) {
      var box = botao.parents(".grid-stack-item-content").find(".panel-body")
      box.destroy();


  };

})(document, window, jQuery);
