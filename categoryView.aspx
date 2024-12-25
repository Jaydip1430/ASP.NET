<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="categoryView.aspx.cs" Inherits="categoryAdd" %>


<asp:Content ID="Content2" ContentPlaceHolderID="cplace" Runat="Server">
    
		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Category View</h1>
							</div>
						</div>
						<div class="col-lg-7">
                                <a href="categoryAdd.aspx" class="btn btn-dark"> ADD NEW CATEGORY</a>
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
                                <th>category id</th>
                                <th>category name</th>
                                <th>category image</th>
                                <th> Action </th>
                            </tr>
                        </thead>
                        <tbody>
                   
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tr>
                                <td><%# Eval("cat_id") %></td>
                                <td><%# Eval("cat_name") %></td>
                                <td><img src='category_image/<%# Eval("cat_image") %>' width="100px" />
                                </td>
                                <td><a href="categoryView.aspx?cat_id=<%#Eval("cat_id") %>"> Delete </a></td>
               
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



