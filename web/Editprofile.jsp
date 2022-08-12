<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <title>Edit Profile </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <style>
       @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');

*{
    font-family: 'Nunito', sans-serif;
    margin: 0; padding: 0;
    box-sizing: border-box;
    text-transform: capitalize;
    outline: none; border: none;
    text-decoration:none ;
    transition: all .2s linear;
}
*::selection{ 
    background: #ffa500;
    color: #fff;
}
html{
    font-size: 62.5%;
    overflow: hidden;
    scroll-padding-top: 6rem;
    scroll-behavior: smooth;
}
.heading{
    text-align: center;
    padding: 2.5rem 0;
}
.heading span{
    font-size:3.5rem ;
    background-color: rgba(255,165,0,.2);
    color:#ffa500;
    border-radius: .5rem;
    padding: .2rem 1rem;
   
}
.heading span.space{
    background:none;
}
.review .heading span{
    font-size:3.5rem ;
    background-color: rgba(255, 8, 0, 0.2);
    color: #fff;
    border-radius: .5rem;
    padding: .2rem 1rem;
}
.gallery .heading{
    text-align: center;
    padding: 4rem ;
    margin-top: 5rem;
}
.gallery .heading span{
    
    font-size:3.5rem ;
    background-color: rgba(255, 8, 0, 0.2);
    color: #fff;
    border-radius: .5rem;
    padding: .2rem 1rem;
}
body{
    background-image: url('001.png');
}
.btn{
    display: inline-block;
    margin-top: 1rem;
    background: #ffa500;
    color: #fff;
    padding: .8rem 3rem;
    border: .2rem solid #ffa500;
    cursor: pointer;
    font-size: 1.7rem;
}
.btn:hover{ 
    background: rgba(255,165,0,.2);
    color: #ffa500;
}
header{
    position: fixed;
    top: 0; left: 0; right: 0;
    background:linear-gradient(to right,#000066 0%,#ff6600 100%);
    z-index: 1000;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 2rem 9%;
}
header .logo{
    font-size: 3rem;
    font-weight: bolder;
    color: #fff;
    text-transform: uppercase;
}
header .logo span{
    color:#ffa500;
}
header .navbar a{
    color: #fff;
    font-size: 2.5rem;
    margin: 0 .8rem;
    padding: 1rem;
}
header .navbar a:hover{
    color:#ffa500;
}
header .icons i{
    font-size: 2.5rem;
    color: #fff;
    cursor: pointer;
    margin-right: 2rem;
}
header .icons i:hover{
    color:#ffa500;
}
header .search-bar-container{
    position: absolute;
    top: 100%; left: 0; right: 0;
    padding:1.5rem 2rem;
    background: #333;
    border-top: .1rem solid rgba(255,255,255,.2);
    display: flex;
    align-items: center;
    z-index: 1001;
    clip-path: polygon(0 0,100% 0,100% 0,0 0);
}
header .search-bar-container.active{
    clip-path: polygon(0 0,100% 0,100% 100%,0 100%);
}
header .search-bar-container #search-bar{
    width: 100%;
    padding: 1rem;
    text-transform: none;
    color: #333;
    font-size: 1.7rem;
    border-radius:  .5rem;
}
header .search-bar-container label{
    color: #fff;
    cursor: pointer;
    font-size: 3rem;
    margin-left: 1.5rem;
}
header .search-bar-container label:hover{
    color: #ffa500;
}

.login-form-container{
    position: fixed;
    top: -120%; left: 0;
    z-index: 10000;
    min-height: 100vh;
    width: 100%;
    background: rgba(0,0,0,.7);
    display: flex;
    align-items: center;
    justify-content: center;
}
.login-form-container.active{
    top: 0;
}
.login-form-container form{
    margin: 2rem;
    padding: 1.5rem 2rem;
    border-radius: .5rem;
    background: #fff;
    width: 50rem;
}
.login-form-container form h3{
    font-size: 3rem;
    color: #444;
    text-transform: uppercase;
    text-align: center;
    padding: 1rem 0;
}
.login-form-container form .box{
    width: 100%;
    padding: 1rem;
    font-size: 1.7rem;
    color: #333;
    margin: .6rem 0;
    border:.1rem solid rgba(0,0,0,.3) ;
    text-transform: none;
}
.login-form-container form .box:focus{
    border-color: #ffa500;
}
.login-form-container form #remember{
    margin: 2rem 0;
}
.login-form-container form label{
    font-size: 1.5rem;
}
.login-form-container form .btn{
    display: block;
    width: 100%;
}
.login-form-container form p{
    padding: .5rem 0;
    font-size: 1.5rem;
    color: #666;
}
.login-form-container form p a{
    color: #ffa500;
}
.login-form-container form p a:hover{
    color: #333;
    text-decoration:underline ;

}
.login-form-container #form-close{
    position: absolute;
    top: 2rem; right: 3rem;
    font-size: 5rem;
    color: #fff;
    cursor: pointer;
}
#menu-bar{
    color: #fff;
    border: .1rem solid #fff;
    border-radius: .5rem;
    font-size: 3rem;
    padding: .5rem 1.2rem;
    cursor: pointer;
    display: none;
}
.home img{
 width: 80%;
 margin-top: 9rem;
 margin-left: 15rem;
 height: 27rem;
} 

.home2 img{
    margin-top: 1.5%; 
    height:345px;
    margin-left: 0%;
}
.home3 img{
    margin-left: 73%; 
    margin-top: -29%; 
    height: 340px;
    width: 26%;
}
.home4 img{
    margin-top: -30%;
    margin-left: 22%; 
    height: 340px;
    width: 50%;
    border-radius: 8px
} 
.csd ul li{
    font-size: 22px;
    margin-left: 2.9%;
    padding: 1%;
}
.csd ul{
    margin-top: 2%;
    margin-bottom: 2%;
    align-items: center;
}
.csd{
   background: rgba(255,255,255,0.5);
   margin-left: 2.5%;
   margin-top: 7%;
   width:95%;
   height: 85%;
   border-radius: 2rem;
}
.img1 {
    margin-left: 75%;
     margin-top: -40%;
} 

.contact{
    width: 96%; 
    height: 540px;
    margin-left: 25px;
    margin-top: 7.3%;
    border-radius: 30px;
    background: rgba(255,255,255,0.5);
}
.contact #p1{
    font-size: 40px;
    font-weight: bolder;
    font-family: Georgia, serif;
    margin-top: 2rem;
    text-align: center;
}

.contact #p2{
    font-size: 25px; 
    margin-top: 2%;
    text-align: center;
}
.contact1{
    border: solid; 
    width:27%;
    height: 60%;
    border-radius:12%;
    margin-left: 3%; 
    margin-top: 5%;
}
.contact1 i{
    font-size:80px;
    color:black; 
    margin-left:35%;
}
.contact1 address{
    margin-left:7%; 
    font-size: 20px; 
    font-weight: bold;
}
.contact1 a{
    color: blue;
    font-size: 20px;

}
.contact2{
    margin-top:-28%;
    margin-left: .1%;
    width: 1320px;
}
.contact2 form{
    border: solid; 
    width:35%;
    border-radius:5% ; 
    margin-left: 31.5%;
}
.contact2 form table{
    spacing:10px;
    align-items:center;
}
.contact2 form table #t1{
    width: 50%;
    text-align: center;
    background-color:rgb(0, 0, 255);
    margin: .1%;
}
.contact2 #t1 #td1{
    font-size:35px;
    color:white;
    font-weight:bold;
    margin-top: -15%;
    align-items: center;

}
.contact2 #i1{
    width:200px; 
    height:30px; 
    border-radius: 12px; 
    background-color: white;
    color: black;
}
.contact2 #i2,#i3{
    width:200px; 
    height:30px; 
    border-radius: 12px;
    background-color: white;
    color:black;  
}

.contact2 #i4{
    width:350px; 
    height:80px; 
    border-radius: 12px; 
    background-color: white;
    color: black;
}
.contact2 #i5{
    width: 100px;
    height: 25px;
    border-radius: 20px;
    background-color: black;
    color: white;
}
.contact2 #i5:hover{
    color: #ffa500;
}
.contact2 label{
    font-size: 16px;
    align-items: center;
    font-weight: bolder;
}

.contact2 #t2{
    text-align: center;
}
.contact2 #td2{
    column-span:2px;
}
.bulk{
    border: solid; 
    border-radius:12%; 
    margin-left: 68%; 
    margin-top: -19%; 
    width: 30%;
    height: 330px;
}
.bulk #pp1{
   font-size: 45px;
   font-weight: bold;
   margin-top: 4%;
   text-align: center;
}
.bulk #pp2{
    font-size: 20px;
    margin-top: 3%;
    text-align: center;
}
.review{
    margin-top: 8rem;
}

.review .review-slider{
    padding-bottom: 2rem;
  }
  
  .review .box{
    padding:2rem;
    text-align: center;
    box-shadow: 0 1rem 2rem rgba(0,0,0,.1);
    border-radius: .5rem;
    margin-top: 2.7rem;
  }
  
  .review .box img{
    height:13rem;
    width:13rem;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 1rem;
  }
  
  .review .box h3{
    color:#333;
    font-size: 2.5rem;
  }
  
  .review .box p{
    color:#666;
    font-size: 1.5rem;
    padding:1rem 0;
  }
  .review .box:hover{
    transform: scale(1);
    box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
  }
  .review .box .stars i{
    color:#ffa500;
    font-size: 1.7rem;
  }

   .gallery .box-container{
    margin: 1.5rem;
    margin-left: 3rem;
    margin-right: 3rem;
    display: flex;
    flex-wrap: wrap;
    gap:2.5rem;
  }
  
  .gallery .box-container .box{
    overflow: hidden;
    box-shadow: 0 1rem 2rem rgba(0,0,0,.1);
    border:1rem solid #fff;
    border-radius: .5rem;
    flex:1 1 30rem;
    height: 25rem;
    position: relative;
  }
  
  .gallery .box-container .box img{
    height: 100%;
    width:100%;
    object-fit: cover;
  }
  
  .gallery .box-container .box .content{
    position: absolute;
    top:-100%; left:0;
    height: 100%;
    width:100%;
    text-align: center;
    background:rgba(0,0,0,.7);
    padding:2rem;
    padding-top: 5rem;
  }
  
  .gallery .box-container .box:hover .content{
    top:0;
  }
  
  .gallery .box-container .box .content h3{
    font-size: 2.5rem;
    color:#ffa500;
  }
  
  .gallery .box-container .box .content p{
    font-size: 1.5rem;
    color:#eee;
    padding:.5rem 0;
  }

  .contact .row{
    display: flex;
    flex-wrap: wrap;
    gap:1.5rem;
    align-items: center;
    margin-left: 40%;
    width: 50%;
  }
  
  .contact .row .image{
    flex:1 1 35rem;
  }
  
  .contact .row .image img{
    width:76%;
    height:40rem;
    margin-left: 6rem;
  }
  
  .contact .row form{
    margin-top: -37rem;
    flex:1 1 50rem;
    padding:2rem;
    box-shadow: 0 1rem 2rem rgba(0,0,0,.1);
    border-radius: .5rem;
  }
  .contact .row form:hover{
    transform: scale(1);
    box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
  }
  
  .contact .row form .inputBox{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
  
  .contact .row form .inputBox input, .contact .row form textarea{
    width:49%;
    margin:1rem 0;
    padding:1rem;
    font-size: 1.7rem;
    color:#333;
    background:#f7f7f7;
    text-transform: none;
  }
  
  .contact .row form textarea{
    height: 15rem;
    resize: none;
    width:100%;
  }

  .brand-container{
    text-align: center;
  }
  
  .footer{
    background:#333;
  }
  
  .footer .box-container{
    display: flex;
    flex-wrap: wrap;
    gap:1.5rem;
  }
  
  .footer .box-container .box{
    padding:1rem 0;
    flex:1 1 25rem;
  }
  
  .footer .box-container .box h3{
    font-size: 2.5rem;
    padding:.7rem 0;
    color:#fff;
  }
  
  .footer .box-container .box p{
    font-size: 1.5rem;
    padding:.7rem 0;
    color:#eee;
  }
  
  .footer .box-container .box a{
    display: block;
    font-size: 1.5rem;
    padding:.7rem 0;
    color:#eee;
  }
  
  .footer .box-container .box a:hover{
    color:#ffa500;
    text-decoration: underline;
  }
  
  .footer .credit{
    text-align: center;
    padding:2rem 1rem;
    margin-top: 1rem;
    font-size: 2rem;
    font-weight: normal;
    color:#fff;
    border-top: .1rem solid rgba(255,255,255,.2);
  }
  
  .footer .credit span{
    color:#ffa500;
  }

  @media(max-width:1200px){
    html{
        font-size: 55%;
    }  
}
@media(max-width:991px){
    header{
        padding: 2rem;
    }  
    section{
        padding: 2rem;
    }  
}
@media(max-width:768px){
    #menu-bar{
        display: initial;
    }
    header .navbar{
        position: absolute;
        top:100%; left: 0; right: 0;
        background: #333;
        border-top: .1rem solid rgba(255,255,255,.2);
        padding: 1rem 2rem;
        clip-path: polygon(0 0,100% 0,100% 0,0 0);
    } 
    header .navbar.active{
        clip-path: polygon(0 0,100% 0,100% 100%,0 100%);
    }
    header .navbar a{
        display: block;
        border-radius:.5rem ;
        padding: 1rem;
        margin: 1.5rem 0;
        background: #222;
    }
}

@media(max-width:450px){
    html{
        font-size: 50%;
    }
    .heading span{
     font-size:2.5rem;
    }
}
        </style>
    </head>
    <body>
        <header>
             <div id="menu-bar" class="fas fa-bars"></div>
            <a href="#" class="logo"><span>T - </span>Shadow</a>
                <nav class="navbar">
                     <a href="Finaldesigningstudio.jsp">Designing Studio</a>
                     <a href="Feedback.jsp">Feedback</a>
                     <a href="Complain.jsp">Complain</a>
                     <a href="Editprofile.jsp">Edit Profile</a>
                     <a href="Signout.jsp">Log Out</a>
                </nav>
    </header> 

    