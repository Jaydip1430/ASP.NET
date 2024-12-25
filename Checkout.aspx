<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
  
    
		
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Checkout</h1>
							</div>
						</div>
						
					</div>
				</div>
                <a href="Checkout.aspx"></a>
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
                              <div class="form-group">
                                  User Name:
                       
                    <asp:TextBox ID="txt_username" class="form-control" runat="server" />
                              </div>
                          </div>
                          </div>

                          <div class="col-12">
                              <div class="form-group">
                                  User Address:
                       
                    <asp:TextBox ID="txt_useraddress" class="form-control" runat="server" />
                              </div>
                            </div>

                              <div class="col-12">
                                  <div class="form-group">
                                      City:
                       
                    <asp:TextBox ID="txt_u_city" class="form-control" runat="server" />
                                  </div>
                                  </div>

                                  <div class="col-12">
                                      <div class="form-group">
                                          pincode:
                       
                    <asp:TextBox ID="txt_u_pincode" class="form-control" runat="server" />
                                      </div>
                                      </div>

                                      <div class="col-12">
                                          <div class="form-group">
                                              MobileNo:
                       
                    <asp:TextBox ID="txt_u_mobileno" class="form-control" runat="server" />
                                          </div>
                                          </div>

                                          <div class="col-12">
                                              <div class="form-group">
                                                  E-mail:
                       
                    <asp:TextBox ID="txt_u_email" class="form-control" runat="server" />
                                              </div>
                                              </div>

                                              

                                              <div class="row m-3">

                                                  <div class="col-12">
                                                      <div class="form-group">
                                                          <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-danger" Text="Submit"  OnClick="btnSubmit_Click" />
                                                      </div>
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

