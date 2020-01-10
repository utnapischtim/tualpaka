<html>
  <head>
    <style>
     ul, li, body, html {
         margin: 0;
         padding: 0;
     }

     ul {
         padding-left: 10px;
         padding-top: 30px;
     }

     body {
         font-family: verdana;
         font-weight: bolder;
         text-align: center;
         width: 102px;
     }

     li {
         display: block;
         list-style: none;
     }

     .main {
         height: 95px;
     }

     .sub {
         break-before: always;
         height: 108px;
     }

     .library {
         font-size: 10px;
         height: 21px;
         line-height: 23px;
     }

     .location {
         font-family: arial;
         font-size: 18px;
         height: 24px;
         line-height: 24px;
     }

     .call-no-piece {
         font-family: arial;
         font-size: 18px;
         height: 24px;
         line-height: 24px;
     }
    </style>
  </head>
  <body onload="window.print()">
    <ul class="main">
      <li class="library">
        {{main.library}}  {{!e.g. Hauptbibliothek}}
      </li>
      <li class="location">
        {{main.location}} {{!e.g. LBS, HB 22}}
      </li>
      <li class="call-no-piece">
        {{main.signature.[0]}}
      </li>
      <li class="call-no-piece">
        {{main.signature.[1]}}
      </li>
      <li class="call-no-piece">
        {{main.signature.[2]}}
      </li>
    </ul>

    {{#if beside}}
    <ul class="sub">
      <li class="library">
        {{sub.library}}  {{!e.g. Hauptbibliothek}}
      </li>
      <li class="location">
        {{sub.location}} {{!e.g. LBS, HB 22}}
      </li>
      <li class="call-no-piece">
        {{sub.signature.[0]}}
      </li>
      <li class="call-no-piece">
        {{sub.signature.[1]}}
      </li>
      <li class="call-no-piece">
        {{sub.signature.[2]}}
      </li>
    </ul>
    {{/if}}
  </body>
</html>