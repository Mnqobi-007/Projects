const searchInput = document.getElementById('search-input');
const suggestionsList = document.getElementById('suggestions-list');
const searchBtn = document.getElementById('searchButton');
const nextButton = document.getElementById('next');
const prevButton = document.getElementById('prev');
let j = 0;

let propertyName = ["Kanye West's Mansion",'Family luxury','Durra Mansion','Hennesy Mansion',"Brother B's Mansion",'GG Mansion','Roadeo Villa',"Hancock's Mansion","Derulo's Mansion","Krest Villa","Kalas Villa","Yonker Mansion","Tyla's Mansion",];
let propertyAddress = ['71 Hedra Street,Vegas','70 Budapass Road,Vietnam','14 Budapass Road,Vietnam','119 Hakkien Road,Vietnam','10 Gotham Road,New York','Sunlight Avenue,Denmark','Jonker Road,Hiptown','Brine Road,New Jersey','Crescent Moon Avenue,New York','Happi Road,Ohio','Draco Road, Paris','13 Rose Avenue,Washington','Jump Road,Johannesburg'];
let propertyPrice = [420000,72000,72000,67500,97000,88000,30000,70000,60000,43000,56000,88000,96000];
let img = document.querySelector('.pic img');
let runTimeOut;
let timeRunning = 1000;

searchInput.addEventListener('input',() =>{
    const userInput = searchInput.value;
    if(userInput === ''){
        return;
    }else{
        const suggestions = propertyName.filter(propertyName => propertyName.startsWith(userInput));
        displaySuggestions(suggestions);
    }
});

// Display suggestions

function displaySuggestions(suggestions) {

	suggestionsList.innerHTML = '';

	suggestions.forEach(suggestion => {

		const listItem = document.createElement('li');

		listItem.textContent = suggestion;
        listItem.classList.add('li');

		suggestionsList.appendChild(listItem);
        listItem.onclick = function(){
            for(let i = 0;i < propertyName.length;i++){
                if(listItem.innerHTML == propertyName[i]){
                    //store matching results
                    img.src = i + 1 + '.jpg';
                    let name = document.querySelector('.pic .name');
                    let address = document.querySelector('.pic .address');
                    let cost = document.querySelector('.pic .cost');
                    name.innerHTML = 'Name: ' + propertyName[i];
                    address.innerHTML = 'Address: ' + propertyAddress[i];
                    cost.innerHTML = 'Rent Cost: R' + propertyPrice[i];
                    name.classList.add('slide');
                    address.classList.add('slide');
                    cost.classList.add('slide');
                    nextButton.style.opacity = 0;
                    prevButton.style.opacity = 0;
                    clearTimeout(runTimeOut);
                runTimeOut = setTimeout(() => {
                    name.classList.remove('slide');
                    address.classList.remove('slide');
                    cost.classList.remove('slide');
                }, timeRunning);
                    name.style.opacity = 1;
                    address.style.opacity = 1;
                    cost.style.opacity = 1;
                    name.style.filter = "blur(0)";
                    address.style.filter = "blur(0)";
                    cost.style.filter = "blur(0)";
                    name.style.top = "20px";
                    address.style.top = "20px";
                    cost.style.top = "20px";
                }
            }
        }

	});

}

//Search Button
searchBtn.onclick = function(){
    //filter results
    j = 0;
    const suggestions = propertyName.filter(propertyName => propertyName.startsWith(searchInput.value));
    //display results
    suggestions.forEach(function(){
        //loads results
        for(let i = 0;i < propertyName.length;i++){
            if(suggestions[j] == propertyName[i]){
                //store matching results
                found = true;
                img.src = i + 1 + '.jpg';
                let name = document.querySelector('.pic .name');
                let address = document.querySelector('.pic .address');
                let cost = document.querySelector('.pic .cost');
                name.innerHTML = 'Name: ' + propertyName[i];
                address.innerHTML = 'Address: ' + propertyAddress[i];
                cost.innerHTML = 'Rent Cost: R' + propertyPrice[i];
                name.classList.add('slide');
                address.classList.add('slide');
                cost.classList.add('slide');
                nextButton.classList.add('slide');
                prevButton.classList.add('slide');
                clearTimeout(runTimeOut);
                runTimeOut = setTimeout(() => {
                    name.classList.remove('slide');
                    address.classList.remove('slide');
                    cost.classList.remove('slide');
                    nextButton.classList.remove('slide');
                    prevButton.classList.remove('slide');
                    nextButton.style.opacity = 1;
                    prevButton.style.opacity = 1;
                    name.style.opacity = 1;
                    address.style.opacity = 1;
                    cost.style.opacity = 1;
                    name.style.filter = "blur(0)";
                    address.style.filter = "blur(0)";
                    cost.style.filter = "blur(0)";
                    name.style.top = "20px";
                    address.style.top = "20px";
                    cost.style.top = "20px";
                    nextButton.style.top = "20px";
                    prevButton.style.top = "20px";
                }, timeRunning);
            }
        }
    });
}
nextButton.onclick = function(){
    j++;
    //next function
    const suggestions = propertyName.filter(propertyName => propertyName.startsWith(searchInput.value));
    //display results
    if(j > suggestions.length - 1){
        alert('No more results here');
        j = suggestions.length - 1
    }
    suggestions.forEach(function(){
        //loads results
        for(let i = 0;i < propertyName.length;i++){
            if(suggestions[j] == propertyName[i]){
                //store matching results
                img.src = i + 1 + '.jpg';
                let name = document.querySelector('.pic .name');
                let address = document.querySelector('.pic .address');
                let cost = document.querySelector('.pic .cost');
                name.innerHTML = 'Name: ' + propertyName[i];
                address.innerHTML = 'Address: ' + propertyAddress[i];
                cost.innerHTML = 'Rent Cost: R' + propertyPrice[i];
                name.classList.add('slide');
                address.classList.add('slide');
                cost.classList.add('slide');
                clearTimeout(runTimeOut);
                runTimeOut = setTimeout(() => {
                    name.classList.remove('slide');
                    address.classList.remove('slide');
                    cost.classList.remove('slide');
                }, timeRunning);
            }
        }
    });
}
//previous button effect
prevButton.onclick = function(){
    j--;
    //prev function
    const suggestions = propertyName.filter(propertyName => propertyName.startsWith(searchInput.value));
    //display results
    if(j < 0){
        alert('No more results here');
        j = 0;
    }
    suggestions.forEach(function(){
        //loads results
        for(let i = 0;i < propertyName.length;i++){
            if(suggestions[j] == propertyName[i]){
                //store matching results
                img.src = i + 1 + '.jpg';
                let name = document.querySelector('.pic .name');
                let address = document.querySelector('.pic .address');
                let cost = document.querySelector('.pic .cost');
                name.innerHTML = 'Name: ' + propertyName[i];
                address.innerHTML = 'Address: ' + propertyAddress[i];
                cost.innerHTML = 'Rent Cost: R' + propertyPrice[i];
                name.classList.add('slide');
                address.classList.add('slide');
                cost.classList.add('slide');
                clearTimeout(runTimeOut);
                runTimeOut = setTimeout(() => {
                    name.classList.remove('slide');
                    address.classList.remove('slide');
                    cost.classList.remove('slide');
                }, timeRunning);
            }
        }
    });
}
//enter click
window.addEventListener('keyup',e =>{
    if(e.key === 'Enter'){
        searchBtn.click();
        searchBtn.focus();
    }
});