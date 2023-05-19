<!DOCTYPE html>
<html>
<head>
<meta charset=utf-8 />
<title>Coffee order for ${nickname}.</title>
<style type="text/css">
body {margin-top: 30px;}
</style> 
</head>
<body>
<div>
<button id="jsstyle" 
onclick="display_random_image();"Click see Pet</button> 
<h1>Click to see image. Does the following look like a <b>${nickname}</b>?</h1>
</div>
</body>
</html>

<script>
function display_random_image() 
{
     var theImages = [{
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/consul.png",
        width: "800",
        height: "695"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/hashicorp.png",
        width: "800",
        height: "695"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/hashicorp_coffee.png",
        width: "400",
        height: "581"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/nomad.png",
        width: "800",
        height: "695"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/packer.png",
        width: "800",
        height: "695"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/terraform_coffee.png",
        width: "400",
        height: "581"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/vagrant.png",
        width: "800",
        height: "695"
    }, {
        src: "https://raw.githubusercontent.com/hashicorp-demoapp/frontend/main/public/img/vault.png",
        width: "800",
        height: "695"
    }];
    
    var preBuffer = [];
    for (var i = 0, j = theImages.length; i < j; i++) {
        preBuffer[i] = new Image();
        preBuffer[i].src = theImages[i].src;
        preBuffer[i].width = theImages[i].width;
        preBuffer[i].height = theImages[i].height;
    }
   
// create random image number
  function getRandomInt(min,max) 
    {
      //  return Math.floor(Math.random() * (max - min + 1)) + min;
    
imn = Math.floor(Math.random() * (max - min + 1)) + min;
    return preBuffer[imn];
    }  

// 0 is first image,   preBuffer.length - 1) is  last image
  
var newImage = getRandomInt(0, preBuffer.length - 1);
 
// remove the previous images
var images = document.getElementsByTagName('img');
var l = images.length;
for (var p = 0; p < l; p++) {
    images[0].parentNode.removeChild(images[0]);
}
// display the image  
document.body.appendChild(newImage);
}  
</script>