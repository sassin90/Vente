function getInternetExplorerVersion(){var c=false;if(navigator.appName=="Microsoft Internet Explorer"){var a=navigator.userAgent;var b=new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})");if(b.exec(a)!=null){c=parseFloat(RegExp.$1)}}return c}function isVisibleElement(a){return(a.offsetWidth>0)}function getNextElement(a){var b=a.nextSibling;while(b.nodeType!=1){b=b.nextSibling}return b}function toggleNextElement(b){if(global_js_static_page_isactivate==1&&(getInternetExplorerVersion()==false||getInternetExplorerVersion()>7)){var d=b;var c=b.children[1];var a=getNextElement(b);if(isVisibleElement(a)){a.style.display="none";c.className="arrow right"}else{a.style.display="block";c.className="arrow bottom"}}return true}function openElement(e){var d=document.getElementById(e);var c=d.children[0];var b=c.children[1];var a=getNextElement(c);a.style.display="block";b.className="arrow bottom";return true}function getAnchor(){var b=window.location.href;var a=b.substr(b.indexOf("#")+1);if(b!=a){return a}return false}function showElementFromAnchor(){var a=getAnchor();if(a&&document.getElementById(a)){toggleNextElement(document.getElementById(a))}}window.onload=showElementFromAnchor;function add_bookmark(){var b=navigator.userAgent.toLowerCase();var a=(b.indexOf("konqueror")!=-1);var c=(b.indexOf("webkit")!=-1);var e=(b.indexOf("mac")!=-1);var d=e?"Command/Cmd":"CTRL";if(window.external&&(!document.createTextNode||(typeof(window.external.AddFavorite)=="unknown"))){window.external.AddFavorite("http://www.leboncoin.fr/","Petites annonces gratuites d'occasion - leboncoin.fr")}else{if(a){alert("Veuillez appuyer sur CTRL + B pour ajouter ce site \u00e0 vos favoris.")}else{if(window.opera){void (0)}else{if(window.home||c){alert("Veuillez appuyer sur "+d+" + D pour ajouter ce site \u00e0 vos favoris.")}else{if(!window.print||e){alert("Veuillez appuyer sur Command/Cmd + D pour ajouter ce site \u00e0 vos favoris.")}else{alert("Votre navigateur internet n'\u00e9tant pas reconnu, vous devrez ajouter ce site manuellement \u00e0 vos favoris.")}}}}}}function hasClass(b,a){return b.className.match(new RegExp("(\\s|^)"+a+"(\\s|$)"))}function addClass(b,a){if(!this.hasClass(b,a)){b.className+=" "+a}}function removeClass(c,a){if(hasClass(c,a)){var b=new RegExp("(\\s|^)"+a+"(\\s|$)");c.className=c.className.replace(b,"")}}function show_account_submenu(){var a=document.getElementById("nav_main");var c="account_submenu";var b=document.getElementById(c);if(b){if(b.style.display=="none"||b.style.display==""){addClass(a,"account_on");b.style.display="block"}else{removeClass(a,"account_on");b.style.display="none"}}return false}var current_screen="screen_form";function show_account_screen(c){var a=document.getElementById(c);var b=document.getElementById(current_screen);switch(current_screen){case"pass_lost_f":document.forms.passlostform.reset();break;default:document.forms.loginform.reset();break}b.style.display="none";a.style.display="block";current_screen=c}function toggle_blocks_display(d,c){var b=document.getElementById(d);var a=document.getElementById(c);if(b.style.display=="none"){b.style.display="block"}else{b.style.display="none"}if(a.style.display=="none"){a.style.display="block"}else{a.style.display="none"}};