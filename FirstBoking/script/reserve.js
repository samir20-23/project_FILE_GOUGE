let request = new XMLHttpRequest();
request.open("POST", "DataLocation/DataLocation.php", true);
request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

request.onload = () => {
  if (request.status >= 200 && request.status < 400) {

    // ###############
    let response = JSON.parse(request.responseText);

    let option = document.getElementById("option");

    const detailsModal = document.getElementById('detailsModal');
    const detailsContent = document.getElementById('detailsContent');
    const closeBtn = document.querySelector('.close-btn');
    const whatsappLink = document.getElementById('whatsappLink');

    let arraydata = response.map(item => ({
      id: item.tour_id,
      name: item.tour_name,
      desc: item.tour_description,
      price: item.tour_price,
      img1: item.tour_img,
      img2: item.tour_img2,
      img3: item.tour_img3,
      img4: item.tour_img4
    }));

    function renderData(dataArray) {
      option.innerHTML = '';

      dataArray.forEach(data => {
        let add_location = document.createElement("div");
        add_location.classList.add("location");
        add_location.innerHTML = `
          <div class="wrapper">
            <i id="left" class="fa fa-chevron-left" aria-hidden="true"></i>
            <ul class="carousel">
              <img src="ADmin/TOUR_ADD/tour_images/${data.img1}" class="card" />
              <img src="ADmin/TOUR_ADD/tour_images/${data.img2}" class="card" />
              <img src="ADmin/TOUR_ADD/tour_images/${data.img3}" class="card" />
              <img src="ADmin/TOUR_ADD/tour_images/${data.img4}" class="card" />
            </ul>
            <i id="right" class="fa fa-chevron-right" aria-hidden="true"></i>
          </div>
          <span class="location_title"><i class="fa fa-map-marker" aria-hidden="true"></i>${data.name}</span>
          <h4 class="location_dex">${data.desc}</h4>
          <p>From <span class="prais">$${data.price}</span> per person</p>
          <button class="reserve" onclick='reserve(${data.id})'>Reserve</button>
        `;
        option.appendChild(add_location);
      });
    }

    renderData(arraydata);

    window.reserve = function (id) {
      const place = arraydata.find(p => p.id === id);

      detailsContent.innerHTML = `
        <h2>${place.name}</h2>
        <div id='reservesImgs'>
          <img src="ADmin/TOUR_ADD/tour_images/${place.img1}" alt="${place.name}" style="width: 100%; height: 300px; object-fit: cover;">
          <img src="ADmin/TOUR_ADD/tour_images/${place.img2}" alt="${place.name}" style="width: 100%; height: 300px; object-fit: cover;">
          <img src="ADmin/TOUR_ADD/tour_images/${place.img3}" alt="${place.name}" style="width: 100%; height: 300px; object-fit: cover;">
          <img src="ADmin/TOUR_ADD/tour_images/${place.img4}" alt="${place.name}" style="width: 100%; height: 300px; object-fit: cover;">
        </div>
        <p>Price: ${place.price}dh</p>
        <div class="rating">Rating: ★ ★ ★ ★ ${place.desc}</div>
        <div class="reviews">${place.name}</div>
      `;

      let mynumber = "+2120718087106";
      whatsappLink.href = `https://wa.me/${mynumber}/?text=I%20want%20to%20reserve%20in%20${place.name}%20for%20${place.price}dh`;

      detailsModal.style.display = 'block';
    };

    closeBtn.addEventListener('click', function () {
      detailsModal.style.display = 'none';
    });

    window.onclick = function (event) {
      if (event.target === detailsModal) {
        detailsModal.style.display = 'none';
      }
    };

  } else {
    console.error("Error: " + request.status);
  }
};

request.onerror = () => {
  console.error("Connection error");
};

let data = "username=myUsername&password=myPassword";
request.send(data);
// let request = new XMLHttpRequest();
// request.open("POST", "DataLocation/DataLocation.php", true);
// request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

// request.onload = () => {
//   if (request.status >= 200 && request.status < 400) { 
  
  

// let emptyrequest =request.responseText.trim();


// if (request.responseText.trim() === emptyrequest ) { 
// arraydata = JSON.parse(localStorage.getItem('tourData'));
// renderData(arraydata);
  
//     } else {
//         arraydata = response.map(item => ({
//         id: item.tour_id,
//         name: item.tour_name,
//         desc: item.tour_description,
//         price: item.tour_price,
//         img1: item.tour_img,
//         img2: item.tour_img2,
//         img3: item.tour_img3,
//         img4: item.tour_img4
//       }));
//           localStorage.setItem('tourData', JSON.stringify(arraydata));
//       arraydata = JSON.parse(localStorage.getItem('tourData'));
//     }
//     renderData(arraydata);
//   let response = JSON.parse(request.responseText);

//   } else {
//     console.error("Error: " + request.status);
//   }
// };

// request.onerror = () => {
//   console.error("Connection error");
// };

// let data = "username=myUsername&password=myPassword";
// request.send(data);

// function renderData(dataArray) {
//   let option = document.getElementById("option");
//   option.innerHTML = '';

//   dataArray.forEach(data => {
//     let add_location = document.createElement("div");
//     add_location.classList.add("location");

//     add_location.innerHTML = `
//       <div class="wrapper">
//         <i id="left" class="fa fa-chevron-left" aria-hidden="true"></i>
//         <ul class="carousel">
//           <img src="ADmin/TOUR_ADD/tour_images/${data.img1}" class="card" />
//           <img src="ADmin/TOUR_ADD/tour_images/${data.img2}" class="card" />
//           <img src="ADmin/TOUR_ADD/tour_images/${data.img3}" class="card" />
//           <img src="ADmin/TOUR_ADD/tour_images/${data.img4}" class="card" />
//         </ul>
//         <i id="right" class="fa fa-chevron-right" aria-hidden="true"></i>
//       </div>
//       <span class="location_title"><i class="fa fa-map-marker" aria-hidden="true"></i>${data.name}</span>
//       <h4 class="location_dex">${data.desc}</h4>
//       <p>From <span class="prais">$${data.price}</span> per person</p>
//       <button class="reserve" onclick='reserve(${data.id})'>Reserve</button>
//     `;
//     option.appendChild(add_location);
//   });
// }

// function reserve(id) {
//   const place = arraydata.find(p => p.id === id);
//   // Your reserve function logic here
// }
