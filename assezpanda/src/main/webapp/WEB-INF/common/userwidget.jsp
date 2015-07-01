<script src="js/uploadimg.js"></script>
<script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>
<style>
#preview {
	background-color: #fff;
	display: block;
	margin-top: -75px;
	float: right;
	margin-right: 5px;
	width: 200px;
	position: relative;
}

#fileinfo,#error,#error2,#abort,#warnsize,#none 
{
	color: #aaa;
	display: none;
	font-size: 10pt;
	font-style: italic;
	margin-top: 10px;
}

@media only screen and (max-width:400px) {
	#preview {
		background-color: #fff;
		display: block;
		margin-left: 82px;
		margin-top: 50px;
		float: left;
		width: 200px;
	}
}

@media only screen and (max-width:350px) {
	#preview {
		background-color: #fff;
		display: block;
		margin-left: 35px;
		float: left;
		width: 200px;
	}
}
</style>

<div class="row well profile">
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"
		style="cursor: pointer">
		
		<figure>
			<img
				src="http://www.localcrimenews.com/wp-content/uploads/2013/07/default-user-icon-profile.png"
				width="100" height="100" class="img-circle" data-toggle="modal"
				data-target="#photomodel" id="img" />
		</figure>
	</div>

	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h6>
					<p class="text-center">
					<strong id="user-globe-rank">
						<%if(session.getAttribute("globalrank")==null){ %>
				<%}else{ %>
				<%=session.getAttribute("globalrank")%>
				<%}%>
					</strong>
					</p>
				</h6>
				<h6>
					<p class="text-center">
						<small id="grank" style="font-size:12px;" class="label label-success">Global Ranking</small>
					</p>
				</h6>
			</div>
			`
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h6>
					<p class="text-center">
						<strong id="user-college-rank"><%if(session.getAttribute("collegerank")==null){ %>
				<%}else{ %>
				<%=session.getAttribute("collegerank")%>
				<%}%> </strong>
					</p>
				</h6>
				<h6>
					<p class="text-center">
						<small id="percentile" style="font-size:12px;" class="label label-warning">Percentile</small>
					</p>
				</h6>
			</div>
		</div>
	</div>
	<div
		class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<h6>
			<p>
				<strong id="user-name" style="display:none;">
				<%if(session.getAttribute("nickname")==null){ %>
				<%}else{ %>
				<%=session.getAttribute("nickname")%>
				<%}%>
				</strong> 
<span class="label pull-right" style="font-size:12px;" id="user-status" style="cursor:default"></span>
			</p>
		</h6>
		<h6>
			<p id="user-frid">
				<b>FRID:</b> FBT<%=session.getAttribute("userid")%></p>
		</h6>
		<h6>
			<p id="user-mail"><%=session.getAttribute("emailid")%></p>
		</h6>
	</div>
	<div
		class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<h6>
			<p>
				<span id="user-role"> <%
 	if (session.getAttribute("jobrole") == null) {
 %>
					Choose Jobrole <%
 	} else {
 %> <%=session.getAttribute("jobrole")%> <%
 	}
 %>
				</span>&nbsp;&nbsp;- &nbsp;&nbsp;<span id="user-technology"> <%
 	if (session.getAttribute("technology") == null) {
 %>Choose Your Technology <%
 	} else {
 %> <%=session.getAttribute("technology")%>
					<%
						}
					%>
				</span>
				<a href="jobrolelanding">
				<span id="editlink" class="pull-right" style="display:none;">
				[ Change ] </span></a>
				
		<span style="display:none;" id="th"> <%
 	if (session.getAttribute("sslcper")==null) {
 %>
					null <%
 	} else {
 %> <%=session.getAttribute("sslcper")%>
					<%
						}
					%>
				</span>
				
		
			
						
			</p>
		</h6>
	</div>
</div>
	<span style="display:none;" id="ugth"> <%
 	if (session.getAttribute("ugper")==null) {
 		
 %>
					null <%
 	} else 
 	{
 		
 %> <%=session.getAttribute("sslcper")%>
					<%
						}
					%>
				</span>
<span style="display:none;" id="twth"> <%
 	if (((session.getAttribute("hscper")==null ) || (session.getAttribute("hscper").equals(0.0)) || (session.getAttribute("hscper").equals("0.0"))) 
 			&& ((session.getAttribute("diplomaper")==null) || (session.getAttribute("diplomaper").equals(0.0))  || (session.getAttribute("diplomaper").equals("0.0")))) {
       
 
 %>
					null <%
 	} 
 	else {
 %> <%=session.getAttribute("sslcper") %>
					<%
						}
					%>
				</span>	
<span id="syoc" style="display:none;"><%=session.getAttribute("sslcyoc")%></span>
			<span id="uyoc" style="display:none;"><%=session.getAttribute("ugyoc")%></span>
			<span id="hyoc" style="display:none;"><%=session.getAttribute("hscyoc")%></span>
			<span id="dyoc" style="display:none;"><%=session.getAttribute("dyoc")%></span>
			<span id="ms" style="display:none;"><%=session.getAttribute("mobistatus")%></span>
			<span id="photo" style="display:none;"><%=session.getAttribute("photo")%></span>
			<span id="pincode" style="display:none;"><%=session.getAttribute("pincode")%></span>
			<span id="pstatus" style="display:none;"><%=session.getAttribute("fullprofile")%></span>
			<span id="userstatus" style="display:none;"><%=session.getAttribute("userstatus")%></span>
 <script>
$(document).ready(function()
		{
	var photo=$("#photo").text();
	var username=$.trim($("#user-name").text()).replace(" ",'');
	var ugth=$.trim($("#ugth").text()).replace(" ",'');
	var pin=$.trim($("#pincode").text()).replace(" ",'');
	if(photo===''||photo==="null")
		{
	
		}
	else
		{
		$("#img").attr("src",photo)
		}
	
   if(username===''||username===null||username==="null")
	{
	   console.log("The user name"+username);
	$('#perdetails').tooltip({
		title:"Please Complete Your Personal Details.",
		position:"bottom"
	});
	$("#perdetails").addClass("glyphicon-asterisk");
	$("#perd").text("(mandatory)");
	$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");
	}
else
	{
	if($("#ms").text()==="1")
	{
		console.log("number");
		$("#perdetails").hide();
		$("#user-status").text("Active").removeClass(" label label-danger").addClass(" label label-success");
	}
	else
		{
		console.log("no number");
		$('#perdetails').tooltip({
			title:"Please Complete Your Personal Details.",
			position:"bottom"
		});
	     }
	
	}
	
   if(pin===''||pin===null||pin==="null")
	{
	   console.log("The address"+pin);
	$('#address').tooltip({
		title:"Please Complete Your Address Details.",
		position:"bottom"
	});
	$("#address").addClass("glyphicon-asterisk");
	$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");
	$("#addr").text("(mandatory)");
	}
else
	{
	 $("#address").hide();
		$("#user-status").text("Active").removeClass(" label label-danger").addClass(" label label-success");
	}

	
	
   if(ugth===''||ugth===null||ugth==="null")
	{
	   console.log("The ug name"+ugth);  
	$('#education').tooltip({
		title:"Please Complete Your Education Details.",
		position:"bottom"
	});
	$("#educ").text("(mandatory)");
	$("#education").addClass("glyphicon-asterisk");
	$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");
	}
else
	{
	$("#user-status").text("Active").removeClass(" label label-danger").addClass(" label label-success");
	 $("#education").hide();
	}
   

	
	
$('#grank').tooltip({
	title:"Your Position for the choosen job role among all register participations.",
	position:"bottom"
});

$('#percentile').tooltip({
	title:"Number of people behind you for every hundred people in the Ranking System.",
	position:"bottom"
});


	
	console.log("The sslc is-->"+$("#syoc").text()+" "+"The hyoc is-->"+$("#hyoc").text()+" "+"The ug is-->"+$("#uyoc").text()+" "+"The diploma is-->"+$("#dyoc").text());
	var data1,data2,data3,data4;
	data1=$.trim($("#th").text());
	console.log("The 10th value is"+data1);
	if(data1==="null")
		{
		$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");
		 $("#user-status").tooltip({
             title:"Please Complete the mandatory Fields in your Profile",
             position:"bottom"
				});
		    $("#twt,#dt,#ugt,#pgt").tooltip({
				title: 'Please Enter the 10th Details',
				position: 'bottom'
			});
		    $("#an,#in,#jr,#co,#user-technology,#user-role").tooltip({
				title: 'Please Complete the mandatory Fields in your Profile to Access this facility',
				position: 'bottom'
			});
		}
	else
		{
		$("#user-status").text("Active").removeClass(" label label-danger").addClass(" label label-success");
		$("#user-status").tooltip({
            title:"Please Complete the mandatory Fields in your Profile",
            position:"bottom"
			});
	    data2=$.trim($("#twth").text());
		console.log("the 12th or diploma value is->"+data2);
		if(data2==="null")
			{
			$(".twt").removeClass("disabled");
			$(".dt").removeClass("disabled");
			$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");
			$("#ugt,#pgt").tooltip({
				title: 'Please Enter the 12th or Diploma Details',
				position: 'bottom'
			});
			$("#an,#in,#jr,#co,#user-technology,#user-role").tooltip({
				title: 'Please Complete the mandatory Fields in your Profile to Access this facility',
				position: 'bottom'
			});
			}
		else
			{
			$("#user-status").tooltip({
                title:"Please Complete the mandatory Fields in your Profile",
                position:"bottom"
				});
			$(".twt").removeClass("disabled");
			$(".dt").removeClass("disabled");
			$(".ugt").removeClass("disabled");
			$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");

			data3=$.trim($("#ugth").text());
			
			console.log("The Ug value is->"+data3);
			if(data3==="null")
				{
				$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");
				$("#pgt").tooltip("destroy");
				$("#pgt").tooltip({
					title: 'Please Enter the ug Details',
					position: 'bottom'
				});
				console.log("Enter in null");
				$("#an,#in,#jr,#co,#user-technology,#user-role").tooltip({
					title: 'Please Complete the mandatory Fields in your Profile to Access this facility',
					position: 'bottom'
				});
				}
			else
				{
				$("#user-status").tooltip('destroy');
				$("#user-status").tooltip({
                    title:"Please verify your Mobile Number",
                    position:"bottom"
					});
				
				if($("#ms").text()==="1")
					{
					$("#user-status").tooltip('destroy');
					$("#user-status").text("Active").removeClass(" label label-danger").addClass(" label label-success");
					}
				else
					{
					$("#user-status").tooltip({
                    title:"Please verify your Mobile Number",
                    position:"bottom"
					});
					$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");

					}
				
				    $(".jr").removeClass("disabled");
				    
				
				   $("#backlog").text();
				    $(".pgt").removeClass("disabled");
				    console.log("Enter in enter in condition");
				    
				    $("#an,#in").tooltip({
						title: 'Please Complete the mandatory Fields in your Profile to Access this facility',
						position: 'bottom'
					});
				    $("#co,#user-technology,#user-role").tooltip({
						title: 'Please Select Your JobRole and Technology',
						position: 'bottom'
					});
					
					var tech=$("#user-technology").text().replace(/ /g,"");
					data4=$.trim(tech);
					console.log("The value->"+data4);
					if(data4==="ChooseYourTechnology")
					{
					
					}
				else
					{
					if($("#ms").text()==="1")
					{
					$("#user-status").tooltip('destroy');
					$("#user-status").text("Active").removeClass(" label label-danger").addClass(" label label-success");
					}
				else
					{
					$("#user-status").tooltip({
                    title:"Please verify your Mobile Number",
                    position:"bottom"
					});
					$("#user-status").text("Profile Incomplete").removeClass(" label label-success").addClass(" label label-danger");

					}
					 
					 $(".co,#tec,#an,.an,#in,.in").removeClass("disabled");
					 $('#co,#an,#in,.tec,#user-technology,#user-role').tooltip('destroy');
					 $(".an i").css("color","red");
					 $("#tec").css("cursor","pointer");
					 $("#editlink").show();
					/*  $("#an").tooltip({
							title: 'Now You have no Announcements',
						   position: 'bottom'
						}); */
					/*  $("#in").tooltip({
							title: 'Now You have no Interviews',
						    position: 'bottom'
						}); */
					}
				}
		
		
			}
			}
		
		

	
	$("li a, .tec,.alradd").on("click",function(e){
		
			 if ($(this).hasClass("disabled")) {
				 e.preventDefault();
				   return false;
				 }
			}); 
 $(":file").filestyle({buttonName: "btn-primary"});
	 
	 $(document).on('click','#upload',function()
	{
		 data = $("#dataurl").text();
		 if (data === '')
	        {
			   $(".none").css("display","none");
	            document.getElementById('none').style.display = 'block';
	        }
	        else
	        {
	        	var src=$("#preview").attr("src");
	            $.ajax({
                    url:"photoupload",
                    type:"post",
                    data:{photo:src}


		            });
		            
		        $("#img").attr("src",src);
		       
	        }
		
    });
	 $(document).on('click','#cancel',function()
     {
		 window.location.href="personal";
	 });
	 
var datavalue1=$.trim($("#user-status").text().replace(" ","").toLowerCase());
var datavalue2=$.trim($("#userstatus").text().replace(" ","").toLowerCase());

	
if(datavalue2==="inactive")
	{
	datavalue2="profileincomplete"
		console.log("The 1 status is--->"+datavalue1+"the 1 back value is-->"+datavalue2);
	}

 if(datavalue1===datavalue2)
		 {
		 console.log("The value is same");
	
		 } 
	 else
		 {
		 console.log("The value is not same");
		 if(datavalue1==="profileincomplete")
			 {
			 datavalue1="inactive";
			 console.log("The if status is--->"+datavalue1+"the 1 back value is-->"+datavalue2); 
			 } 
		 
		 $.ajax({
type:"post",
url:"userstatus",
data:{status:datavalue1}
			 
			 }); 
	
		 }
		});

</script> 

<div id="photomodel" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Select your File and Click Upload</h4>
				</div>
				<div class="modal-body">
					<div id="imgcontent" class="row">

						<div class="container_image">
							<div class="upload_form_cont">

								
									<label for="image_file">
										<div id="hed">Please select image file with size less
											then 1 MB</div>
									</label>

									<div id="textbo">
										<input type="file" class="filestyle"
											data-buttonName="btn-primary" id="image_file"
											name="image_file" onchange="fileSelected();"> 
										<!-- <input type="file" id="image_file" name="image_file" class="filestyle" data-buttonBefore="true" onchange="fileSelected();"> -->
										<!-- <input type="file" name="image_file" id="image_file" onchange="fileSelected();" /> -->
									</div>
								<!-- 	<input type="button" class="btn btn-primary" value="Upload"  id="upload"/>
                                <input type="button" class="btn btn-danger" value="Cancel" id="cancel"  /> -->

									<div id="fileinfo">
										<div id="filename"></div>
										<div id="filesize"></div>
										<div id="filetype"></div>
										<div id="filedim"></div>
									</div>
									<div class="none" id="none">You should select valid image
										files First!</div>
									<div class="none" id="error">
										Only Image Formats Such as BMP/GIF/JPEG/PNG/TIFF Can be
										uploaded<br />You should select valid image files only!
									</div>
									<div class="none" id="error2">An error occurred while
										uploading the file</div>
									<div class="none" id="abort">The upload has been canceled
										by the user or the browser dropped the connection</div>
									<div class="none" id="warnsize">Your file is very big. We
										can't accept it. Please select more small file</div>

									<div id="progress_info">
										<div id="progress"></div>
										<div id="progress_percent"></div>
										<div class="clear_both"></div>
										<div>
											<div id="speed"></div>
											<div id="remaining"></div>
											<div id="b_transfered"></div>
											<div class="clear_both"></div>
										</div>
										<div id="upload_response" style="display: none"></div>
									</div>
								

								<img id="preview" />
							</div>

						</div>
						<div id="dataurl"
							style="position: absolute; bottom: 0; left: 0; width: 100%; height: 20%; border: 2px solid black; overflow: scroll; display: none"></div>
					</div>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="button" id="upload" class="btn btn-primary"
						data-dismiss="modal">UPLOAD</button>
				</div>
			</div>
		</div>
	</div>