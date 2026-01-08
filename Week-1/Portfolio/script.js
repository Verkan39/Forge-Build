console.log("JS LOADED");

const topBtn=document.querySelector('.top');

window.addEventListener('scroll',()=>{
    if(window.scrollY>100){
        topBtn.classList.add("active");}
    else{
        topBtn.classList.remove("active");
    }
});

const form=document.getElementById('contactForm');
// console.log(form);
// const closeBtn=document.getElementById('backtohome');
// const modal=document.querySelector('.modal');
form.addEventListener("submit",async(e)=>{
    e.preventDefault();
    window.location.reload();});
//     for (let pair of new FormData(form).entries()) {
//     console.log(pair[0] + ': ' + pair[1]);
//     }
//     const response=await fetch(form.action,{
//         method:form.method,
//         body:new FormData(form),
//         headers:{
//             "Accept":"application/json"
//         }
//     });
//     console.log("Status:",response.status); 

//     if(response.ok){
//         modal.classList.add("active");
//         form.reset();
//     }else{
//         const data=await response.json();
//         alert("Oops! There was a problem submitting your form");
//         console.log("errors:",data);
//     }
// });

// closeBtn.addEventListener("click",()=>{
//     modal.classList.remove("active");
// });

function sendMail(){
    let parms={
        name: document.getElementById("namef").value,
        email: document.getElementById("EmailID").value,
        title: document.getElementById("message").value,
    }

    emailjs.send("service_hj3ye8h","template_t9q1o1v",parms).then(alert("Email sent successfully!")) 
}