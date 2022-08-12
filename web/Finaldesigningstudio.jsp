<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <title>Designing Studio</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="Index_1.css">        
        <link rel="stylesheet" href="Finaldesigningstudio.css">    
        
    </head>
    <body>
    <header>
             <div id="menu-bar" class="fas fa-bars"></div>
            <a href="#" class="logo"><span>T - </span>Shadow</a>
                <nav class="navbar">
                      <a href="Userpage.jsp">Home</a>
                     <a href="Finaldesigningstudio.jsp">Designing Studio</a>
                     <a href="Feedback.jsp">Feedback</a>
                     <a href="Complain.jsp">Complain</a>
                     <a href="Signout.jsp">Log Out</a>>
                </nav>
    </header>

<!-- Create the container of the tool -->
        <div id ="final-tshirt" style="width:80%;margin-left: 5%;" >
            <div id="tshirt-div">
<!--Initially, the image will have the background tshirt that has transparency So we can simply update the color with CSS or JavaScript dinamically-->
                <img id="tshirt-backgroundpicture" src="background_tshirt1.png" style="margin-top: -1%;margin-left: 0%;"/>
                <div id="drawingArea" class="drawing-area">					
                    <div class="canvas-container">
                        <canvas id="tshirt-canvas" width="320" height="500" style="margin-left:-20%;"></canvas>
                    </div>
                </div>
            </div>
        </div>
        
<!-- The select that will allow the user to pick one of the static designs -->
        <form action="DesigningStudio.java" method="Post" id="L38formtools" enctype="multipart/form-data" >
            <table cellspacing="10" align="center" >
                <tr align="center" bgcolor="darkblue">
                    <td colspan="2" id="L41">Designing Tools</td>
                </tr>

                <tr>
                    <td><label for="tshirt-design" style="font-size: 22px; font-weight: 600;">T-Shirt Design:</label>
                        <select class="L46effects" name="design" id="tshirt-design" style="height: 26px;">
                            <option value="">Select one of our Clip arts / designs ...</option>
                            <option value="./batman_small.png">Batman</option>
                            <option value="Batman2.png">Batman2</option> 
                            <option value="Superman.png">superman</option>
                            <option value="Ironman.png">Ironman</option>
                            <option value="ApnaTimeAyega.png">Apna Time Ayega</option>
                            <option value="Skull.png">Skull</option>
                            <option value="KKR.png">KKR</option>
                            <option value="RCB.png">RCB</option>
                            <option value="CSK.png">CSK</option>
                            <option value="DC.png">DC</option>
                            <option value="MI.png">MI</option>
                            <option value="SRH.png">SRH</option>
                            <option value="RR.png">RR</option>
                            <option value="KXIP.png">KXIP</option>
                            <option value="Joker.png">Joker</option>
                            <option value="BoyRunning.png">Boy Running</option>
                            <option value="GirlRunning.png">Girl Running</option>
                            <option value="Avengers.png">Avengers</option>
                            <option value="YouAreStrong.png">You are Strong</option>
                            <option value="Attitude.png">Attitude Quote</option>
                            <option value="ImagineQuotes.png">Imagine Quote</option>
                            <option value="IndianFlag.png">Indian Flag</option>
                        </select>
                    </td>
                </tr>
<!-- The Select that allows the user to change the color of the T-Shirt -->

                <tr>
                    <td><label for="tshirt-color" id="L76tshirtdesign">T-Shirt Color:</label>
                        <select class="L46effects" name="color" id="tshirt-color"style="height: 26px;">
<!-- You can add any color with a new option and definings its hex code -->
                            <option value="#fff">White</option>
                            <option value="#000">Black</option>
                            <option value="#f00">Red</option>
                             <option value="#0080ff">Blue</option>
                            <option value="#008000">Green</option>
                            <option value="#ff0">Yellow</option>
                        </select>
                    </td>
                </tr>


              


                <table cellspacing="10px" text-align="center" >
                    <tr align="center" bgcolor="darkblue">
                        <td colspan="2" id="L99">After Designing</td>
                    </tr>

                    <tr>
                        <td>
                            <label for="tshirt-final" id="L105">Download your Designed T-Shirt :</label>
                             <button class="L46effects" onclick="myFunction()" id="L106downloadtshirtbutton" >Download Tshirt</button>
                        </td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td><label for="tshirt-final" id="L113" class="btn">Attach your downloaded T-shirt image here:</label>
                            <input type="file" id="tshirt-final" name="myfile">
                        </td>
                    </tr>

                    <tr>
                        <td><label for="tshirt-size" style="font-size: 24px;">T-Shirt Size:</label>
                            <select class="L46effects" name="size" id="tshirt-size"style="height: 26px;">
                                <option value="none">Select Size</option>
                                <option value="XS">XS</option>
                                <option value="S">S</option> 
                                <option value="M">M</option>
                                <option value="L">L</option> 
                                <option value="XL">XL</option>
                                <option value="XXL">XXL</option> 
                    </tr>
                    </td>

                    <tr>
                        <td><label for="tshirt-quantity" id="L132">Quantity:</label>
                            <select class="L46effects" name="qty" id="L133tshirt-quantity">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option> 
                                <option value="4">4</option>
                                <option value="5">5</option> 
                                <option value="6">6</option>
                                <option value="7">7</option> 
                                <option value="8">8</option> 
                                <option value="9">9</option>
                                <option value="10">10</option> 
                    </tr>
                    </td>

                    <td colspan="2"><label style="font-size: 24px; font-weight: 600">Delivery Address:</label>
                        <button class="L46effects" class="open-button" style="font-size: 16px; width: 100%;" onclick="openForm()">Click here to add delivery address</button>



                        <div  class="form-popup" id="myForm">
                            <table cellspacing="10" align="center">
                                <tr align="center" bgcolor="darkblue">
                                    <td colspan="2" id="L155" >Fill Delivery details
                                </tr>
                                </td>
                                <tr>

                                    <td style="font-size: 18px;font-weight: bold;">Full Name; </td>
                                    <td>
                                        <input  text="text" name="fName" placeholder="Enter name"
                                         id="L163" required></td>
                                </tr>
                                <tr>
                                    <td style="font-size: 18px;font-weight: bold;">Contact No.:</td>
                                    <td>
                                        <input type="number" name="cont" placeholder="Enter contact no"
                                             id="L163" maxlength="10"   required></td>
                                </tr>
                                <tr>
                                    <td style="font-size: 18px;font-weight: bold;">Email ID:</td>
                                    <td>
                                        <input type="email" name="email" placeholder="Enter email id"
                                              id="L163" required></td>
                                </tr>

                                <tr>
                                    <td style="font-size: 18px;font-weight: bold;">Pincode:</td>
                                    <td>
                                        <input type="number" name="pincode" 
                                            id="L163"  required></td>

                                </tr>

                                <tr>

                                    <td style="font-size: 18px;font-weight: bold;">State:</td>

                                    <td>
                                        <select name="state"        
                                               id="L163" required>
                                            <option value="">Select State</option>
                                            <option value="Andhra Pradesh">Andhra Pradesh</option>   
                                            <option value="Assam">Assam</option>   
                                            <option value="Bihar">Bihar</option>  
                                            <option value="Bihar">Delhi</option>  
                                            <option value="Goa">Goa</option>   
                                            <option value="Gujarat">Gujarat</option>   
                                            <option value="Haryana">Haryana</option>   
                                            <option value="Himachal Pradesh">Himachal Pradesh</option>   
                                            <option value="Jammu and Kashmir">Jammu and Kashmir</option>   
                                            <option value="Jharkhand">Jharkhand</option>   
                                            <option value="Karnataka">Karnataka</option>   
                                            <option value="Kerala">Kerala</option>   
                                            <option value="Madhya Pradesh">Madhya Pradesh</option>   
                                            <option value="Maharashtra">Maharashtra</option>
                                            <option value="Manipur">Manipur</option>   
                                            <option value="Maharashtra">Punjab</option>
                                            <option value="Manipur">Rajasthan</option>  
                                            <option value="Maharashtra">Maharashtra</option>
                                            <option value="Manipur">Manipur</option>   
                                            <option value="Maharashtra">Uttar Pradesh</option>
                                            <option value="Manipur">West Bengal</option>   
                                        </select>
                                    </td>
                                </tr>

                                <td style="font-size: 18px;font-weight: bold;">City:</td>
                                <td>
                                    <input type="text" name="city" placeholder="enter city name"
                                          id="L163" required></td>

                                <tr>
                                    <td style="font-size: 18px;font-weight: bold;">Address:</td>
                                    <td>
                                        <input type="textarea" name="address" font-size="2px"
                                            id="L227" required></td>
                                </tr>

                                <tr>
                                    <td style="font-size: 18px;font-weight: bold;">Landmark:</td>
                                    <td>
                                        <input type="textarea" name="landmark" font-size="2px" 
                                           id="L235" required></td>
                                </tr>


                                <tr align="center"</tr>
                                <td colspan="2">
                                    <input class="L46effects" type="submit" value="Confirm Order" id="L241" >
                                    <button class="L46effects" id="L242" type="button" onclick="closeForm()">Close</button>
                                </td>

                            </table>

                            </form>
                        </div>
                        <script>
                            function openForm() {
                                document.getElementById("myForm").style.display = "block";
                            }
                            function closeForm() {
                                document.getElementById("myForm").style.display = "none";
                            }
                        </script>

                    </td>

                    </form>
                    

                    <!-- Include DomToImage in the page -->
                    <script src="./domtoimage.min.js"></script>        
                    <script>
             function myFunction() {
                 console.log("new function");
                 // Define as node the T-Shirt Div
                 // Define as node the T-Shirt Div
                 var node = document.getElementById('final-tshirt');

                 domtoimage.toPng(node).then(function (dataUrl) {
                     // Print the data URL of the picture in the Console
                     console.log(dataUrl);

                     // You can for example to test, add the image at the end of the document
                     var img = new Image();
                     img.src = dataUrl;
                     //    document.body.appendChild(img);
                     downloadImage(dataUrl)
                 }).catch(function (error) {
                     console.error('oops, something went wrong!', error);
                 });
                 // Print the data URL of the picture in the Console


                 async function downloadImage(imageSrc) {
                     const image = await fetch(imageSrc)
                     const imageBlog = await image.blob()
                     const imageURL = URL.createObjectURL(imageBlog)

                     const link = document.createElement('a')
                     link.href = imageURL
                     link.download = 'tshirt'
                     document.body.appendChild(link)
                     link.click()
                     document.body.removeChild(link)
                 }
             }

                    </script>

                    <!-- Include Fabric.js in the page -->
                    <script src="./fabric.min.js"></script>

                    <script>
             let canvas = new fabric.Canvas('tshirt-canvas');

             function updateTshirtImage(imageURL) {
                 fabric.Image.fromURL(imageURL, function (img) {
                     img.scaleToHeight(300);
                     img.scaleToWidth(300);
                     canvas.centerObject(img);
                     canvas.add(img);
                     canvas.renderAll();
                 });
             }

             // Update the TShirt color according to the selected color by the user
             document.getElementById("tshirt-color").addEventListener("change", function () {
                 document.getElementById("tshirt-div").style.backgroundColor = this.value;
             }, false);

             // Update the TShirt color according to the selected color by the user
             document.getElementById("tshirt-design").addEventListener("change", function () {

                 // Call the updateTshirtImage method providing as first argument the URL
                 // of the image provided by the select
                 updateTshirtImage(this.value);
             }, false);


             // When the user clicks on upload a custom picture
             document.getElementById('tshirt-custompicture').addEventListener("change", function (e) {
                 var reader = new FileReader();

                 reader.onload = function (event) {
                     var imgObj = new Image();
                     imgObj.src = event.target.result;

                     // When the picture loads, create the image in Fabric.js
                     imgObj.onload = function () {
                         var img = new fabric.Image(imgObj);

                         img.scaleToHeight(300);
                         img.scaleToWidth(300);
                         canvas.centerObject(img);
                         canvas.add(img);
                         canvas.renderAll();
                     };
                 };

                 // If the user selected a picture, load it
                 if (e.target.files[0]) {
                     reader.readAsDataURL(e.target.files[0]);
                 }
             }, false);

             // When the user selects a picture that has been added and press the DEL key
             // The object will be removed !
             document.addEventListener("keydown", function (e) {
                 var keyCode = e.keyCode;

                 if (keyCode == 46) {
                     console.log("Removing selected element on Fabric.js on DELETE key !");
                     canvas.remove(canvas.getActiveObject());
                 }
             }, false);


                    </script>


                    


                    </body>
                    </html>