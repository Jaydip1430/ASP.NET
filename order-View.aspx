<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="order-View.aspx.cs" Inherits="order_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Order View</h1>
							</div>
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


            <div class="col-md-8 col-lg-8 pb-4">

        <form runat="server">
            <div class="row">

                <div class="col-12">

                    <asp:Repeater ID="rptr" runat="server">
                        <HeaderTemplate>

                    <table class ="table table-bordered">
                        <thead>
                            <tr>
                                <th>order id</th>
                                <th>product id</th>
                                <th>quantity</th>
                                <th>date</th>
                                <th>Address</th>
                                <th>user id</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            </HeaderTemplate>
                        <ItemTemplate>

                            <tr>
                                <td><%# Eval("order_id") %></td>
                                <td><%# Eval("product_id") %></td>
                                <td><%# Eval("quantity") %></td>
                                <td><%# Eval("date") %></td>
                                <td><%# Eval("address") %></td>
                                <td><%# Eval("userid") %></td>
                                 <td><a href="order-View.aspx?order_id=<%#Eval("order_id") %>"> Delete </a></td>
               
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

