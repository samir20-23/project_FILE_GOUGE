let tours = document.querySelectorAll("#tour");
let clients = document.querySelectorAll("#client");
let views = document.querySelectorAll("#view");

clients.forEach(client => {
    client.addEventListener("click", () => {
        window.location.replace("croad_CLIENT.php") ;
    });
});



tours.forEach(tour => {
    tour.addEventListener("click", () => {
        window.location.replace("croad_TOUR.php"); 
    });
    
});

views.forEach(view => {
    view.addEventListener("click", () => {
        window.location.replace("croad_VIEW.php");
    });
});
   