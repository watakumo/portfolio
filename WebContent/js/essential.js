/**
 *
 */

//load_essentials.js
document.write('<link href="/portfolio/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">');
document.write('<link href="/portfolio/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">');
document.write('<link href="/portfolio/dist/css/sb-admin-2.css" rel="stylesheet">');
document.write('<link href="/portfolio/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">');
document.write('<script type="text/javascript" src="/portfolio/js/w3data.js"></script>');
document.write('<script type="text/javascript" src="/portfolio/js/jquery-3.1.1.min.js"></script>');

// 페이지별 헤드 & 네비게이터


// document.getElementById("myheader").innerHTML = code;
$(document).ready(function(){ $("#myheader").load("/portfolio/include/navigator.html"); 	 });
