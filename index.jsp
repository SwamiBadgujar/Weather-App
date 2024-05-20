<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="style.css" />
<style type="text/css">
@charset "ISO-8859-1";

 * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
   color : black;
}

body  {
 display: flex;
  height: 100vh;
  align-items: center;
  justify-content: center;
  color : black;
    background-image: url('https://static.pexels.com/photos/414171/pexels-photo-414171.jpeg');
  background-size:cover;
        -webkit-animation: slidein 100s;
        animation: slidein 100s;

        -webkit-animation-fill-mode: forwards;
        animation-fill-mode: forwards;

        -webkit-animation-iteration-count: infinite;
        animation-iteration-count: infinite;

        -webkit-animation-direction: alternate;
        animation-direction: alternate;              
}

@-webkit-keyframes slidein {
from {background-position: top; background-size:3000px; }
to {background-position: -100px 0px;background-size:2750px;}
}

@keyframes slidein {
from {background-position: top;background-size:3000px; }
to {background-position: -100px 0px;background-size:2750px;}

}
.mainContainer {
  width: 25rem;
  height: auto;
  border-radius: 1rem;
  background: #fff;
  box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
}

.searchInput {
  width: 100%;
  display: flex;
  padding: 1rem 1rem;
  justify-content: center;
   font-family: 'Source Code Pro',
}

.searchInput input {
  width: 100%;
  height: 2rem;
  outline: none;
  font-size: 1rem;
  color: #525050;
  padding: 0.2rem 0.5rem;
  border-radius: 1.5rem;
  border: 1px solid #b3b3b3;
}

.searchInput input:focus {
  border: 1px solid #9c9dde;
}

.searchInput button {
  width: 2.2rem;
  height: 2rem;
  cursor: pointer;
  color: #9b9b9b;
  border-radius: 50%;
  margin-left: 0.4rem;
  transition: all 0.3s ease;
  background-color: #fff;
  border: 1px solid #b3b3b3;
}

.searchInput button:hover {
  color: #fff;
  background-color: #9c9dde;
  border: 1px solid #9c9dde;
}

.weatherIcon {
  display: flex;
  padding-top: 0.5rem;
  padding-bottom: 0.5rem;
  justify-content: center;
}

.weatherIcon img {
  max-width: 100%;
  width: 8rem;
}

.weatherDetails .temp{
 font-size: 2rem;
}
.cityDetails {
  color: #323232;
  font-size: 2.5rem;
  text-align: center;
  margin-bottom: 0.5rem;
}

.cityDetails .date {
  color: #323232;
  font-size: 1.5rem;
  text-align: center;
  margin-bottom: 0.5rem;
}

.windDetails {
  display: flex;
  margin-top: 1rem;
  margin-bottom: 1.5rem;
  justify-content: space-around;
}

.windDetails .humidityBox {
  display: flex;
  font-size: 1rem;
  color: #323232;
}

.windDetails .humidity .humidityValue {
 text-align: center;
  font-size: 2rem;
  color: #323232;
}

.windDetails .humidityBox img {
  max-height: 3rem;
  margin-right: 0.5rem;
}

.windDetails .windSpeed {
  display: flex;
  font-size: 1rem;
  color: #323232;
}

.windDetails .windSpeed img {
  max-height: 3rem;
  margin-right: 0.5rem;
}


image-logo{
        height: auto;
        width: auto;
        filter: drop-shadow(20px 10px 10px black);
      }
</style>
</head>
<body>
<div style="color:white; text-align:center"><h1>Welcome to the Weather Web App</h1>
 
     <form action="report" class="searchInput">
            <input type="text" placeholder="Enter City Name" id="searchInput"  name="city"/>
            <button id="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
      </form>    
 </div>
 
</body>
</html>