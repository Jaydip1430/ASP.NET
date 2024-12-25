<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Shop</h1>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="hero-img-wrap">
								<img  src="image/s1.png"Width="400" Height="560" class="img-fluid">
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		

		<div class="untree_co-section product-section before-footer-section">
		    <div class="container">
		      	<div class="row">

                  <asp:Repeater ID="rptrProduct" runat="server">
                      <ItemTemplate>

                          <!-- Start Column 1 -->
					<div class="col-12 col-md-4 col-lg-3 mb-5">
						<a class="product-item" href="shop-detail.aspx?p_id=<%#Eval("p_id") %>">
							<img src="product_image/<%#Eval("p_image") %>" class="img-fluid product-thumbnail">
							<h3 class="product-title"><%#Eval("p_name") %></h3>
							<strong class="product-price">Rs <%#Eval("p_price") %> /-</strong>

							<span class="icon-cross">
								<img src="images/cross.svg" class="img-fluid">
							</span>
						</a>
					</div> 
					<!-- End Column 1 -->
					

                      </ItemTemplate>
                  </asp:Repeater>
		      			
					
		      	</div>
		    </div>
		</div>

</asp:Content>

