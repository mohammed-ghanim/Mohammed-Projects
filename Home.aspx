<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
  <br/>
  <div id="myCarousel" class="carousel slide animated zoomIn mainCarusel" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
          <img src="Images/Kungfu%20Panda.jpg" alt="Kugfu Panda"   width="255" height="100" />
          <img src="Images/Kung-Fu-Panda-2.jpg" alt="Kugfu Panda" class="mid"  width="650"  style="float:right;margin-top:-400px;margin-right:255px;height:400px;" />
          <img src="Images/Kung-Fu-Panda-3.jpg" alt="Kugfu Panda"  width="255" style="float:right;margin-top:-400px;height:400px" />
      </div>

      <div class="item">
          <img src="Images/The%20Dark%20Night%20Rises.jpg" alt="The Dark Night Rises" width="300" style="height:400px;"/>
          <img src="Images/The%20Dark%20Night%20Rises%202.jpg" class="mid" alt="The Dark Night Rises" width="500" style="float:right;margin-top:-400px;margin-right:260px;height:400px;"/>
          <img src="Images/The%20Dark%20Night%20Rises%203.jpg" alt="The Dark Night Rises" width="300" style="float:right;margin-top:-400px;height:400px;" />
      </div>
    
      <div class="item">
          <img src="Images/dbz.jpg" alt="Dragon Ball z resurrection 'F'" width="300" style="height:400px;"/>
          <img src="Images/dbz2.JPG" class="mid" alt="Dragon Ball z resurrection 'F'" width="490" style="float:right;margin-top:-400px;margin-right:260px;height:400px;" />
          <img src="Images/dbz%203.JPG" alt="Dragon Ball z resurrection 'F'" width="300"  style="float:right;margin-top:-400px;height:400px;"  />
      </div>

      <div class="item">
          <img src="Images/Titanic.jpg" alt="Titanic" width="300" class="sld"  style="height:400px;"/>
          <img src="Images/Titanic%202.JPG" class="mid" alt="Titanic" width="490" style="float:right;margin-top:-400px;margin-right:260px;height:400px;" />
          <img src="Images/Titanic%203.jpg" alt="Titanic" width="300" style="float:right;margin-top:-400px;height:400px;"/>
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
         </div>
</asp:Content>

