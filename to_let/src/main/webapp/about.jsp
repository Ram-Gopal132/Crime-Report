<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/8fe048c345.js" crossorigin="anonymous"></script>
    <title>Homepage With CSS GRID</title>
    <style>
 

/====== typography ======/

.abt-us {
    padding: 12px 16px;
    background: green;
    color: #fff;
    font-size: 16px;
    border: unset;
}
h1 {
   font-weight: 700;
   color: #fff;
   font-size: 1.75rem;
}

h2 {
   font-weight: 700;
   color: #000;
   font-size: 1.75rem;
}

.intro {
  font-size: 1.15rem;
  margin-bottom: 2.5em;
}

span {
   color: #fda039;
}

.black {
  font-weight: 700;
  color: #000;
}

/==== main-grid Layout ====/

.main-grid {
    display: grid;
    grid-template-columns: minmax(1em, 1fr) minmax(0px, 500px) minmax(1em, 1fr);
    grid-column-gap: 2em;
}

/* ==== Layout ====*/


.current {
  border-bottom: 1px solid #fda039;
}

main {
  background-color: #fff;
  color: #000;
  grid-column: 2 /-2;
}

  .head {
  grid-column: 2 / -2;
  text-align: center;
  margin-top: 3em;
  margin-bottom: 3em;
}

.page-title {
  color: #000;
  font-size: 2.5rem;
  justify-self: center;
}

.main-image {
  grid-column: 2 / -2;
  object-fit: cover;
  max-width: 100%;
  display: block;
  box-shadow: 10px 10px 250px #000;
}

.main-text {
  grid-column: 2 / -2;
  margin-top: 3em;
  margin-bottom: 3em;
}

.section-title::after {
  content: "";
  display: block;
  width: 100px;
  height: 3px;
  margin-top: 1em;
  background: #fda039;
  margin-left: auto;
  margin-right: auto;
}

.social {
  order: -1;
  font-size: 1.75rem;

  padding-bottom: 2em;
  display: flex;
  flex-direction: row;
 
}

.icon {
  color: #000;
}
.icon:hover,
.icon:focus {
  cursor: mouse;
  color: #fda039;
}

.footer-text {
  display: flex;
  flex-direction: column;
}

.end {
  text-align: center;
  margin-bottom: 0;
}
.copyright {
  font-size: 1.1rem;
  padding-top: 1em;
  text-align: center;
  font-weight: 700;
}

.footer-text,
.copyright {
  opacity: .4;
  }
 

  @media (min-width: 600px) {
      .main-grid {
        grid-template-columns: minmax(1em, 1fr) repeat(3, minmax(20px, 320px)) minmax(1em, 1fr);
    }
    
    .open-nav,
    .close-nav {
      display: none;
    }
    
    .navigation {
      position: initial;
    }
    
    .nav-list {
      flex-direction: row;
      justify-content: flex-start;
    }
    
    .nav-link {
      margin-left: 1em;
      font-size: 1.7rem;
    }
    
    .logo {
      padding: .5em 1em;
      text-align: center;
    }
    
    .head {
      grid-column: 3 / -3;
    }
    
.page-title::after {
    content: '';
    display: block;
    width: 100%;
    height: 5px;
    background: #fda039;
    margin-right: auto;
    margin-left: auto;
    margin-top: 10px;
}
    
    .main-image {
      grid-column: 2;
      margin-top: 1.3em;
  
    }
    
    .main-text {
      grid-column: 3 / span 2;
      margin-top: 0;
    }
    
    .section-title::after {
  margin-left: 0;
}

    
    .social {
      grid-column: span1;
    }
    
    .icon {
      margin: .5em;
    }
    
    .footer-text {
      width: 50vw;
      margin-left: 0;
      order: -1;
    }
    
    .end,
    .copyright {
      text-align: start;
    }
  }

@media(min-width: 700px) {
  .page-title::after {
    content: '';
    display: block;
    width: 160px;
    height: 5px;
    background: #fda039;
    margin-right: auto;
    margin-left: auto;
    margin-top: 10px;
}
}
    </style>
  </head>
  <body>
      <main class="main-grid">
            <div class="head">
            <h1 class="page-title">About us</h1>
            <p class="subtitle">We are specialsts in web development. Creativity and fun are our ingredients for awesome work.</p>
            </div>
            <img class="main-image" src="" alt="two men in a coworking space">
            
            <div class="main-text">
                        <h2 class="section-title sub"> </p>
                <button class="abt-us">Read more</button>
                  <div class="social">
        <a href="#" class="facebook icon"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="twitter icon"><i class="fab fa-twitter"></i></a>
        <a href="#" class="instagram icon"><i class="fab fa-instagram"></i></a>
      </div>
            </div>
      
    </main>
    
       
  </body>
</html>