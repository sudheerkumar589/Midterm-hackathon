<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Barcode.aspx.cs" Inherits="AddEvent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
 
        <div class="container">
            <h1>Camera API</h1>
 
            <section class="main-content">
                <p>A demo of the Camera API, currently implemented in Firefox and Google Chrome on Android. Choose to take a picture with your device's camera and a preview will be shown through createObjectURL or a FileReader object (choosing local files supported too).</p>
 
                <p>
                    <input type="file" id="take-picture" accept="image/*">
                </p>
 
                <h2>Preview:</h2>
                <p>
                    <img src="about:blank" alt="" id="show-picture">
                </p>
 
                <p id="error"></p>
 
            </section>
 
            <p class="footer"></a>.</p>
        </div>
 
 
        <script src="js/base.js"></script>
 
 
      </body>
</html>
