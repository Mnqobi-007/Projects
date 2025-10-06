let nextDOM = document.getElementById('next');
let prevDOM = document.getElementById('prev');
let carouselDOM = document.querySelector('.carousel');
let listItemDOM = document.querySelector('.carousel .list');
let thumbnailDOM = document.querySelector('.carousel .thumbnail');
let seeMoreButton = document.querySelector('.carousel .list .item .content button');
let description = document.querySelector('.carousel .list .item .des');
let seeMansionButton = document.querySelector('.carousel .list .item .content button:nth-child(2)');

nextDOM.onclick = function(){
    showSlider('next');
}
prevDOM.onclick = function(){
    showSlider('prev');
}
let timeRunning = 3000;
let timeAutoNext = 7000;
let runTimeOut;
function showSlider(type){
    let itemSlider = document.querySelectorAll('.carousel .list .item');
    let itemThumbnail = document.querySelectorAll('.carousel .thumbnail .item');

    if(type === 'next'){
        listItemDOM.appendChild(itemSlider[0]);
        thumbnailDOM.appendChild(itemThumbnail[0]);
        carouselDOM.classList.add('next');
    }else{
        let positionLastItem = itemSlider.length - 1;
        listItemDOM.prepend(itemSlider[positionLastItem]);
        thumbnailDOM.prepend(itemThumbnail[positionLastItem]);
        carouselDOM.classList.add('prev');
    }
    clearTimeout(runTimeOut);
    runTimeOut = setTimeout(() => {
        carouselDOM.classList.remove('next');
        carouselDOM.classList.remove('prev');
    }, timeRunning);
    

}
seeMoreButton.onclick = function(){
    //description
    description.innerHTML = "Welcome to the Teekay's Mansions website!! This website shall aid you in browsing mansions. The Teekay's Mansions application will provide better user interface for a full user experience. Here you can just browse you mansions and start the booking on our app";
}