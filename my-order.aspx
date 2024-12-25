<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="my-order.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Orders</h1>
							</div>
						</div>
						<div class="col-lg-7">
							
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		

		<div class="untree_co-section before-footer-section">
            <div class="container">
              <div class="row mb-5">
                <form class="col-md-12" method="post">
                  <div class="site-blocks-table">
                    <table class="table">
                      <thead>
                        <tr>
                          <th class="product-thumbnail">Image</th>
                          <th class="product-name">Product</th>
                          <th class="product-price">Price</th>
                          <th class="product-quantity">Quantity</th>
                          <th class="product-total">Total</th>
                        </tr>
                      </thead>
                      <tbody>
                          <asp:Repeater ID="rptCart" runat="server">
                              <ItemTemplate>
                                  <tr>
                          <td class="product-thumbnail">
                            <img src="product_image/<%#Eval("p_image") %>"  alt="Image" class="img-fluid">
                          </td>
                          <td class="product-name">
                            <h2 class="h5 text-black"><%#Eval("p_name") %></h2>
                          </td>
                          <td>Rs <%#Eval("p_price") %></td>
                          <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                              <%#Eval("quantity") %>
                            </div>
        
                          </td>
                          <td><%#Eval("total") %></td>
                        </tr>
        
                              </ItemTemplate>
                          </asp:Repeater>
                        
                      </tbody>
                    </table>
                  </div>
                </form>
              </div>
        
              <div class="row">
                <div class="col-md-6 pl-5">
                  <div class="row justify-content-end">
                    <div class="col-md-7">
                      <div class="row">
                        <div class="col-md-12 text-right border-bottom mb-5">
                          <h3 class="text-black h4 text-uppercase">Order Totals</h3>
                        </div>
                      </div>
                      <div class="row mb-3">
                      </div>
                      <div class="row mb-5">
                        <div class="col-md-6">
                          <span class="text-black">Total</span>
                        </div>
                        <div class="col-md-6 text-right">
                          <strong class="text-black"><asp:Label ID="lblTotal" runat="server" /></strong>
                        </div>
                      </div>
        
                      <div class="row">
                        <div class="col-md-12">
                          <a href="checkout.aspx" class="btn btn-black btn-lg py-3 btn-block" ">Proceed To Checkout</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
		
</asp:Content>

