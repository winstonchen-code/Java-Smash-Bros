function getStages(){
    document.querySelector('#stage-container').innerHTML = ""
    fetch('http://localhost:3000/stages')
    .then(res => res.json())
    .then(stages => {
        stages.forEach(renderStage)
    })
}

function renderStage(stage){
    let stageBox = document.querySelector('#stage-container')

    let card = document.createElement('div')
      card.classList.add('card', 'm-2')
      card.id = `stage-${stage.id}`
    
    let img = document.createElement('img')
      img.className = 'card-img-top'
      img.src = stage.image

    let cardBody = document.createElement('div')
      cardBody.classList.add('card-body')
    
    let cardTitle = document.createElement('h5')
      cardTitle.classList.add('card-title')
      cardTitle.textContent = stage.name
        
    // let cardFooter = document.createElement ('div')
    //   cardFooter.classList.add('card-footer', 'd-flex', 'justify-content-center')
    //   cardFooter.innerText = fighter.series

    let cardLikes = document.createElement ('div')
      cardLikes.classList.add('card-footer', 'd-flex', 'justify-content-center')
      cardLikes.innerText = "Likes: " + stage.likes
      
      cardLikes.addEventListener('click', () => [
        updateStageLikes(stage, cardLikes)
      ])
    
      let cardDelete = document.createElement ('div')
      cardDelete.classList.add('card-footer', 'd-flex', 'justify-content-center')
    
      let btn = document.createElement("button")
      btn.className = "btn btn-danger"
      btn.innerHTML = "Delete" 
      btn.addEventListener("click", () => {
        deleteStage(stage)
      })
    
    cardDelete.appendChild(btn)
    cardBody.append(cardTitle, cardLikes, cardDelete)
    card.append(img, cardBody)
    stageBox.appendChild(card)

}

function updateStageLikes(stage, cardFooter){
  let likes = parseInt(cardFooter.innerText.split(" ")[1])
  let newLikes = {
    likes: likes + 1
  }
  console.log(cardFooter)

  let reqPackage = {}
    reqPackage.headers = {"Content-Type": "application/json"}
    reqPackage.method = "PATCH"
    reqPackage.body = JSON.stringify(newLikes)
  
  fetch(`http://localhost:3000/stages/${stage.id}`, reqPackage)
    .then(res => res.json())
    .then((stageObj) => {
      cardFooter.textContent = `Likes: ${newLikes.likes}`
    })

}

function addingStage(event){
  event.preventDefault()
  let data = {
    name: event.target.name.value,
    image: event.target.image.value,
    music: event.target.music.value,
    maxplayers: event.target.max.value,
    likes: 0 
  }
  postStage(data)
}

function postStage(data){
  fetch('http://localhost:3000/stages', {
    method: "POST",
    headers: {
      "Content-Type":"application/json",
    },
    body: JSON.stringify(data)
  })
  .then(res => res.json())
  .then(data=> {
    renderStage(data)
  })
}

function clearStage(){
  document.querySelector('#stage-container').innerHTML = ""
}

function deleteStage(stage){
  let reqPackage = {}
    reqPackage.headers = {"Content-Type": "application/json"}
    reqPackage.method = "DELETE"
  fetch(`http://localhost:3000/stages/${stage.id}`, reqPackage)
    .then(() => {
      document.getElementById(`stage-${stage.id}`).remove()
    })
}