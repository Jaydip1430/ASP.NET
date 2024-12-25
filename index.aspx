<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">

    
		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								
								<p class="mb-4"></p>
								<p><a href="shop.aspx" class="btn btn-secondary me-2">Shop Now</a><a href="" class="btn btn-white-outline">Explore</a></p>
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

		<!-- Start Product Section -->
		<div class="product-section">
			<div class="container">
				<div class="row">

					<!-- Start Column 2 -->
					<asp:Repeater ID="rptCat" runat="server">
                        <ItemTemplate>

                    <div class="col-12 col-md-4 col-lg-4 mb-5 mb-md-0">
						<a class="product-item" href="shop.aspx?cat_id=<%#Eval("cat_id") %>">
							<img src="category_image/<%#Eval("cat_image") %>" class="img-fluid product-thumbnail">
							<h3 class="product-title"><%#Eval("cat_name") %></h3>
						
						</a>
					</div> 
					<!-- End Column 2 -->
                                  </ItemTemplate>
					</asp:Repeater>
                  
				</div>
			</div>
		</div>
		<!-- End Product Section -->

	
		
		


</asp:Content>

