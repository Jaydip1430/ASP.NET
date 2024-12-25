<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    
		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Login</h1>
								
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
                        Email:
                       
                    <asp:TextBox ID="txtemail" class="form-control" runat="server" />
                    </div>
                </div>

                <div class="col-12">
                    <div class="form-group">
                        Password:
                       
                    <asp:TextBox ID="txtPwd" TextMode="Password" class="form-control" runat="server"  />
                    </div>
                </div>

            </div>

            <div class="row m-3">

                <div class="col-12">
                    <div class="form-group">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-danger" OnClick="btnSubmit_Click" Text="Submit" />
                    </div>
                </div>

            </div>

             <div class="row m-3">

                <div class="col-12">
                    <div class="form-group">
                    <asp:Label ID="lblMsg" runat="server" />
                         </div>
                </div>

            </div>


        </form>

    </div>

          </div>

        </div>

      </div>


    </div>
  </div>

  <!-- End Contact Form -->

</asp:Content>

