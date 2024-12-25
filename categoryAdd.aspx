<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="categoryAdd.aspx.cs" Inherits="categoryAdd" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cplace" Runat="Server">
    
		
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Category Add</h1>
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
                        Category name:
                       
                    <asp:TextBox ID="txt_cat_name" class="form-control" runat="server" />
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        Category image:
                       
                    <asp:Fileupload ID="catimage" class="form-control" runat="server" />
                    </div>

            </div>

            <div class="row m-3">

                <div class="col-12">
                    <div class="form-group">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-danger" Text="Submit" OnClick="btnSubmit_Click" />
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



