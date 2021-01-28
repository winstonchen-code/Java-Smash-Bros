function getFighters(){
    document.querySelector('#fighter-container').innerHTML = ""
    fetch("http://localhost:3000/fighters")
    .then(res => res.json())
    .then(fighters => {
        fighters.forEach(renderFighter)
    })
}

function renderFighter(fighter){
    let fighterBox = document.querySelector('#fighter-container')

    let card = document.createElement('div')
      card.classList.add('card', 'm-2')
      card.id = `fighter-${fighter.id}`
    
    let img = document.createElement('img')
      img.className = 'card-img-top'
      img.src = fighter.image

    let cardBody = document.createElement('div')
      cardBody.classList.add('card-body')
    
    let cardTitle = document.createElement('h5')
      cardTitle.classList.add('card-title')
      cardTitle.textContent = fighter.name
    
    // let cardFooter = document.createElement ('div')
    //   cardFooter.classList.add('card-footer', 'd-flex', 'justify-content-center')
    //   cardFooter.innerText = fighter.series

    let cardFooter = document.createElement ('div')
      cardFooter.classList.add('card-footer', 'd-flex', 'justify-content-center')
      cardFooter.innerText = "Likes: " + fighter.likes

      cardFooter.addEventListener('click', () => [
        updateLikes(fighter, cardFooter)
      ])

    let cardInformation = document.createElement ('div')
      cardInformation.classList.add('card-footer', 'd-flex', 'justify-content-center')
    
    let btnSelect = document.createElement("button")
      btnSelect.innerHTML = "Select Me" 
      btnSelect.addEventListener("click", () => {
        selectFighter(fighter)
    })
    
    let cardDelete = document.createElement ('div')
      cardDelete.classList.add('card-footer', 'd-flex', 'justify-content-center')
    
    let btn = document.createElement("button")
      btn.className = "btn btn-danger"
      btn.innerHTML = "Delete" 
      btn.addEventListener("click", () => {
        deleteFighter(fighter)
    })

    cardInformation.appendChild(btnSelect)
    cardDelete.appendChild(btn)
    cardBody.append(cardTitle, cardFooter, cardInformation, cardDelete)
    card.append(img, cardBody)
    fighterBox.appendChild(card)

}

function updateLikes(fighter, cardFooter){
  let likes = parseInt(cardFooter.innerText.split(" ")[1])
  let newLikes = {
    likes: likes + 1
  }
  console.log(cardFooter)

  let reqPackage = {}
    reqPackage.headers = {"Content-Type": "application/json"}
    reqPackage.method = "PATCH"
    reqPackage.body = JSON.stringify(newLikes)
  
  fetch(`http://localhost:3000/fighters/${fighter.id}`, reqPackage)
    .then(res => res.json())
    .then((fighterObj) => {
      cardFooter.textContent = `Likes: ${newLikes.likes}`
    })
}

function addingFighter(event){
    event.preventDefault()
    let data = {
      name: event.target.name.value,
      series: event.target.series.value,
      image: event.target.image.value,
      description: event.target.description.value,
      likes: 0 
    }
  postFighter(data)
}
  
function postFighter(data){
    fetch('http://localhost:3000/fighters', {
      method: "POST",
      headers: {
        "Content-Type":"application/json",
      },
      body: JSON.stringify(data)
    })
    .then(res => res.json())
    .then(data=> {
      renderFighter(data)
    })
}

function clearFighter(){
  document.querySelector('#fighter-container').innerHTML = ""
}

function deleteFighter(fighter){
  let reqPackage = {}
    reqPackage.headers = {"Content-Type": "application/json"}
    reqPackage.method = "DELETE"
  fetch(`http://localhost:3000/fighters/${fighter.id}`, reqPackage)
    .then(() => {
      document.getElementById(`fighter-${fighter.id}`).remove()
    })
}

function selectFighter(fighter){
  document.querySelector('#fighter-container').innerHTML = ""
  let fighterBox = document.querySelector('#fighter-container')

    let card = document.createElement('div')
      card.classList.add('card', 'm-2')
      card.id = `fighter-${fighter.id}`
    
    let img = document.createElement('img')
      img.className = 'card-img-top'
      img.src = fighter.image

    let cardBody = document.createElement('div')
      cardBody.classList.add('card-body')
    
    let cardTitle = document.createElement('h5')
      cardTitle.classList.add('card-title')
      cardTitle.textContent = fighter.name
    
    // let cardFooter = document.createElement ('div')
    //   cardFooter.classList.add('card-footer', 'd-flex', 'justify-content-center')
    //   cardFooter.innerText = fighter.series

    let cardFooter = document.createElement ('div')
      cardFooter.classList.add('card-footer', 'd-flex', 'justify-content-center')
      cardFooter.innerText = "Likes: " + fighter.likes

      cardFooter.addEventListener('click', () => [
        updateLikes(fighter, cardFooter)
      ])
    
    let cardSeries = document.createElement ('div')
      cardSeries.classList.add('card-footer', 'd-flex', 'justify-content-center')
      cardSeries.innerText = "Series: " + fighter.series

    cardBody.append(cardTitle, cardFooter, cardSeries)
    card.append(img, cardBody)
    fighterBox.appendChild(card)
}