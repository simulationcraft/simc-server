if (typeof jQuery != 'undefined') {
  jQuery(document).ready(function($) {
      var filetypes = /\.(zip|dmg)$/i;
      var baseHref = '';
      if (jQuery('base').attr('href') != undefined) baseHref = jQuery('base').attr('href');

      jQuery('a').on('click', function(event) {
        var el = jQuery(this);
        var track = true;
        var href = (typeof(el.attr('href')) != 'undefined' ) ? el.attr('href') :"";
        var isThisDomain = href.match(document.domain.split('.').reverse()[1] + '.' + document.domain.split('.').reverse()[0]);
        if (!href.match(/^javascript:/i)) {
          var elEv = []; elEv.value=0, elEv.non_i=false;
          if (href.match(filetypes)) {
            var extension = (/[.]/.exec(href)) ? /[^.]+$/.exec(href) : undefined;
            elEv.category = "download";
            elEv.action = "click-" + extension[0];
            elEv.label = href.replace(/ /g,"-");
            elEv.loc = baseHref + href;
          }
          else
            track = false;

          if (track) {
            alert(elEv.category);
            alert(elEv.action);
            alert(elEv.label);
            alert(elEv.loc);
            alert(_gaq.push(['_trackEvent', elEv.category.toLowerCase(), elEv.action.toLowerCase(), elEv.label.toLowerCase(), elEv.value, elEv.non_i]));
            if ( el.attr('target') == undefined || el.attr('target').toLowerCase() != '_blank') {
              setTimeout(function() { location.href = elEv.loc; }, 400);
              return false;
            }
          }
        }
      });
  });
}
