<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="productAdd.aspx.cs" Inherits="productAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
  
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Product Add</h1>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		

		
		<div class="untree_co-section">
      <div class="container">

        <div class="block">
          <div class="row justify-content-center">


            <div class="col-md-8 col-lg-8 pb-4">

        <form runat="server">
           
            <div class="row">
                
                <div class="col-12">
                   
                        Product name:
                       
                    <asp:TextBox ID="pname"  cssClass="form-control" runat="server" />
                    </div>

                    <div class="col-12">
                    <div class="form-group">
                          Price:
                       
                    <asp:TextBox ID="pprice"  cssClass="form-control" runat="server" />
                    </div>
                </div>
                    
                    <div class="form-group">
                        Image:
                       
                    <asp:Fileupload ID="pimage" cssClass="form-control" runat="server" />
                    </div>
                       
                    <div class="form-group">
                        Description:
                       
                    <asp:TextBox ID="pdescription"  cssClass="form-control" runat="server" />
                    </div>

                            <div class="col-12">
                    <div class="form-group">
                        Category id:
                       
                    <asp:TextBox ID="catid"  cssClass="form-control" runat="server" />
                    </div>
            </div>

            <div class="row m-3">

                <div class="col-12">
                    <div class="form-group">
                        <asp:Button ID="Submit" runat="server" CssClass="btn btn-danger" Text="Submit" OnClick="Submit_Click" />
                    </div>
                </div>

            </div>
                </div>
        </form>

    </div>

          </div>

        </div>

      </div>


    </div>
  
    


</asp:Content>


