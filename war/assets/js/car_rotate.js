var obj;

(function() {
                 var mainObj = {
                     imageHolder: null,
                     distance: 0,
                     initialX: 0,
                     initialY: 0,
                     finalX: 0,
                     finalY: 0,
                     presentX: 0,
                     presentY: 0,
                     hasuserInteracted: false,                     
                     counter: 0,
                     noOfImages: 12,
                     
          
         isTouchSupported: 'ontouchstart' in window.document,    

         initApp: function() {
             
             setTimeout(function() { window.scrollTo(0, 1); }, 20);
             mainObj.startEvent = mainObj.isTouchSupported ? 'touchstart' : 'mousedown',
             mainObj.moveEvent = mainObj.isTouchSupported ? 'touchmove' : 'mousemove',
             mainObj.endEvent = mainObj.isTouchSupported ? 'touchend' : 'mouseup',   
             
             mainObj.imageHolder = document.getElementById("imageHolder");
             mainObj.imageHolder.addEventListener(mainObj.startEvent, mainObj.startHandler, false);
             mainObj.imageHolder.addEventListener(mainObj.moveEvent, mainObj.moveHandler, false);
             mainObj.imageHolder.addEventListener(mainObj.endEvent, mainObj.endHandler, false);
             //add cursor style for computer browsers
             mainObj.imageHolder.style.cursor = mainObj.isTouchSupported ? "default":"pointer";
             //stop the window from scrolling
             mainObj.stopScrolling();
         },
         stopScrolling: function() {
             document.getElementById("wrapper").ontouchmove = function(event) {
                 event.preventDefault();
             }
         },
         startHandler: function(event) {                         
             
             var eventObj = mainObj.isTouchSupported ? event.touches[0] : event;            
             mainObj.initialX = eventObj.pageX;
             
             mainObj.hasuserInteracted = true;
             console.log('start');
         },
         moveHandler: function(event) {
             if (mainObj.hasuserInteracted) {
                 
                 var eventObj = mainObj.isTouchSupported ? event.touches[0] : event; 
                 mainObj.presentX = eventObj.pageX;
                 mainObj.distance = parseInt((mainObj.presentX - mainObj.initialX) / 10);
                 
                 if (mainObj.distance <= -1) {
                     mainObj.initialX = eventObj.pageX;
                     mainObj.moveForward();
                 }
                 else if (mainObj.distance >= 1) {
                     mainObj.initialX = eventObj.pageX;
                     mainObj.moveBackward();
                 }
                 else {
                 }
                 console.log("move");
             }
         },
         endHandler: function() {
             //if (mainObj.hasuserInteracted) {
                 mainObj.hasuserInteracted = false;
                 console.log("end");
             //}
         },
         moveForward: function() {
             ++mainObj.counter;
             obj=mainObj;
             if (mainObj.counter == mainObj.noOfImages) {
                 mainObj.counter = 0;
             }
             
             if (mainObj.counter == 3 || mainObj.counter == 12) {
                 mainObj.imageHolder.style.width = "478px";
             }
             else {
                 mainObj.imageHolder.style.width = "480px";
             }
             
             mainObj.imageHolder.style.backgroundPosition = (-mainObj.counter * 480) + "px 0px";
         },
         moveBackward: function() {
             mainObj.counter--;
             obj=mainObj;
             if (mainObj.counter == -1) {
                 mainObj.counter = mainObj.noOfImages - 1;
             }

             
             if (mainObj.counter == 15) {
                 mainObj.imageHolder.style.backgroundPosition = (-mainObj.counter * 480 - 2) + "px 0px";
             }
             else if (mainObj.counter == 13 || mainObj.counter == 12) {
                 mainObj.imageHolder.style.width = "239px";
                 mainObj.imageHolder.style.backgroundPosition = (-mainObj.counter * 480) + "px 0px";
             }
             else {
                 
                 mainObj.imageHolder.style.backgroundPosition = (-mainObj.counter * 480) + "px 0px";
             }
         }
     }
     //window.exposedmainObj = mainObj;
     window.addEventListener("load", function() { mainObj.initApp(); }, false);  
 })()