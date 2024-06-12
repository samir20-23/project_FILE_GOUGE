if (localStorage.getItem("username") === null) {
    let rigthSection = document.getElementById("rigthSection");
    // link1
    let singUpp = document.createElement("a");
    singUpp.href="BACKEND/sing-Up.html";
    singUpp.id="AsingUp";
    
    // button
    let buttonsingUpp = document.createElement("button");
    buttonsingUpp.id="singUp";
    buttonsingUpp.innerHTML="Sing-Up";
    singUpp.appendChild(buttonsingUpp);
    rigthSection.appendChild(singUpp);
    
    // location sing up 


    singUpp.addEventListener("click", function() {
  window.location.href = "sign.html";
}); 

    // link2
    let singInn = document.createElement("a");
    singInn.href="BACKEND/log-in.html";
    singInn.id="AsingIn";
    
    // button
    let buttonsingInn = document.createElement("button");
    buttonsingInn.id="singIn";
    buttonsingInn.innerHTML="Sing-In";
    singInn.appendChild(buttonsingInn);
    rigthSection.appendChild(singInn);
    
    singInn.addEventListener("click", function() {
        window.location.href = "BACKEND/log-in.html";
      }); 
    } else {
    
    
    let rigthSection = document.getElementById("rigthSection");
    
    let profile = document.createElement("div");
    profile.id="profile";
    let icon = document.createElement("i");
    icon.setAttribute("class","fa fa-user");
    icon.setAttribute("aria-hidden","true");
    profile.appendChild(icon);
    
    let nameuser = document.createElement("h2");
    nameuser.setAttribute("id","nameuser");
    nameuser.innerHTML=localStorage.getItem("username");
    rigthSection.appendChild(nameuser);
    rigthSection.appendChild(profile);
    
    // over
    let selectProFile = document.createElement("div");
    selectProFile.id="selectProFile";
    
      let selectProFileText1 = document.createElement("p");
      selectProFileText1.id="selectProFileText1";
      selectProFileText1.innerHTML="Profile";
       selectProFile.appendChild(selectProFileText1);
    
       let selectProFileText2 = document.createElement("p");
      selectProFileText2.id="selectProFileText2";
      selectProFileText2.innerHTML="Sing-Aout";
       selectProFile.appendChild(selectProFileText2);
    
    rigthSection.appendChild(selectProFile)
    // over
    
    profile.addEventListener("click",selectProFilee);
    nameuser.addEventListener("click",selectProFilee);
    
    
    
    selectProFile.style.display="none";
    let numberover = 0 ;
    function selectProFilee(){
    numberover++;
    
      selectProFile.style.display="flex";
      if(numberover ==2){
        numberover=0;
    selectProFile.style.display="none";
      }
    
    }
    //         hover function
    
    selectProFileText1.addEventListener("click",goProFile);
    function goProFile(){
      window.location.replace("TOUR/croad_TOUR.php");
    
    }
    
    selectProFileText2.addEventListener("click",signOut);
    
    function signOut() {
        localStorage.removeItem("username");
        localStorage.removeItem("userid");
        localStorage.removeItem("useremail");
        localStorage.removeItem("usernumberty");
        localStorage.removeItem("userphone");
        localStorage.removeItem("userage");
    
        window.location.reload();
      }
    } 