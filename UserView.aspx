<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="UserView.aspx.cs" Inherits="User_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>User Register</h1>
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
                                <th>user id</th>
                                <th>user name</th>
                                <th>user address</th>
                                <th>city</th>
                                <th>pincode</th>
                                <th>mobile no</th>
                                <th>E-mail</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            </HeaderTemplate>
                        <ItemTemplate>

                            <tr>
                                <td><%# Eval("user_id") %></td>
                                <td><%# Eval("username") %></td>
                                <td><%# Eval("useraddress") %></td>
                                <td><%# Eval("city") %></td>
                                <td><%# Eval("pincode") %></td>
                                <td><%# Eval("mobileno") %></td>
                                <td><%# Eval("email") %></td>
                                <td><a href="UserView.aspx?user_id=<%#Eval("user_id") %>"> Delete </a></td>
                         
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

