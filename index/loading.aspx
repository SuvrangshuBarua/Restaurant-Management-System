<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loading.aspx.cs" Inherits="index_loading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="../css/loading.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <<div class="preload">
     <div class="logo">
       Load-<span style="color:darkturquoise">ing</span>
     </div>
    <div class="loader-frame">
      <div class="loader1" id="loader1"></div>
      <div class="loader2" id="loader2"></div>
    </div>
</div>
        <script src="../js/loading.js"></script>
    </form>
</body>
</html>
