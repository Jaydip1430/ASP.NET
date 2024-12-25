<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="productView.aspx.cs" Inherits="productView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Product View</h1>
							</div>
						</div>
                        	<div class="col-lg-7">
                                <a href="productAdd.aspx" class="btn btn-dark"> ADD NEW PRODUCT</a>
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		
		<!-- Start Contact Form -->
		<div class="untree_co-section">
      <div class="container">

        <div class="block">
          <div class="row justify-content-center">


            <div class="">

        <form runat="server">
            <div class="row">

                <div class="">

                    <asp:Repeater ID="rptr" runat="server">
                        <HeaderTemplate>

                    <table class ="table table-bordered">
                        <thead>
                            <tr>
                                <th>Product id</th>
                                <th>Product name</th>
                                <th>Product price</th>
                                <th>Product image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>

                                <td><%# Eval("p_id") %></td>
                                <td><%# Eval("p_name") %></td>
                                <td><%# Eval("p_price") %></td>
                                <td><img src='product_image/<%# Eval("p_image") %>' width="200px"  height="100px"/></td>
                                <td><a href="productView.aspx?p_id=<%#Eval("p_id") %>"> Delete </a></td>
               
                            </tr>
                            </ItemTemplate>
                        <FooterTemplate>
                        </tbody>
                    </table>
                    </FooterTemplate>

                         </asp:Repeater>



                </div>


            </div>
        </form>

    </div>

          </div>

        </div>

      </div>


    </div>

  <!-- End Contact Form -->
</asp:Content>

