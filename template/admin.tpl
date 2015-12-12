<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>8GAG Admin LogIn</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link rel="stylesheet" href="/css/bsp.css" media="screen">
  <link rel="stylesheet" href="/css/myCss.css" medial="screen">
  <link rel="stylesheet" href="/css/signin.css" medial="screen">
</head>

<body>
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a href="/" class="navbar-brand">8GAG</a>
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
    </div>
  </div>



  <div class="container">
    <br/><br/><br/><br/>
    <form class="form-signin" action="/checkin" method="post">
      <h2 class="form-signin-heading">Lache tes identifiants biatch !</h2>
      <br/>
      <label for="inputEmail" class="sr-only">Pseudo</label>
      <input name="id" type="text" id="inputEmail" class="form-control" placeholder="Pseudo" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <br/>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Accède au pouvoir !</button>
    </form>

  </div>
  <!-- /container -->


  </div>


  <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <script src="../assets/js/custom.js"></script>
  <script type="text/javascript">
    /* <![CDATA[ */
    (function() {
      try {
        var s, a, i, j, r, c, l = document.getElementsByTagName("a"),
          t = document.createElement("textarea");
        for (i = 0; l.length - i; i++) {
          try {
            a = l[i].getAttribute("href");
            if (a && a.indexOf("/cdn-cgi/l/email-protection") > -1 && (a.length > 28)) {
              s = '';
              j = 27 + 1 + a.indexOf("/cdn-cgi/l/email-protection");
              if (a.length > j) {
                r = parseInt(a.substr(j, 2), 16);
                for (j += 2; a.length > j && a.substr(j, 1) != 'X'; j += 2) {
                  c = parseInt(a.substr(j, 2), 16) ^ r;
                  s += String.fromCharCode(c);
                }
                j += 1;
                s += a.substr(j, a.length - j);
              }
              t.innerHTML = s.replace(/</g, "&lt;").replace(/>/g, "&gt;");
              l[i].setAttribute("href", "mailto:" + t.value);
            }
          } catch (e) {}
        }
      } catch (e) {}
    })();
    /* ]]> */
  </script>
</body>

</html>
