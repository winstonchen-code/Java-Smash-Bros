function fetchFighters(){
    fetch("http://localhost:3000/fighters")
    .then(res => res.json())
    .then(fighters => {
        fighters.forEach(renderFighter)
    })
}

function renderFighter(fighter){
    let div = document.querySelector("#fighters")
    let fighterDiv = document.createElement("div")
    div.appendChild(fighterDiv)

    fighterDiv.classList.add("ui", "card")
    fighterDiv.id = `fighter-${fighter.id}`
    fighterDiv.innerHTML = `
    <div class="image">
    <img src="${fighter.image}">
  </div>
  <div class="content">
    <a class="header">${fighter.name}</a>
    <div class="meta">
      <span class="date">${fighter.series}</span>
    </div>
    <div class="description">
      ${fighter.description}
    </div>
  </div>
  <div class="extra content">
    <ul>
    </ul>
    <i class="trash icon" data-id=${fighter.id}></i>
  </div>`

  let deleteIcon = fighterDiv.querySelector('i')
  deleteIcon.addEventListener("click", removeFighter)

  let ul = fighterDiv.querySelector("ul")
  fighter.stages.forEach(stage => {
    ul.innerHTML += `<li>${stage.name}</li>`
  })
}

function addingFighter(event){
  event.preventDefault()
  let data = {
    name: event.target.name.value,
    series: event.target.name.value, 
    image: event.target.image.value,
    description: event.target.description.value,
  }
  postFighter(data)
}

function postFighter(data){
  fetch('http://localhost:3000/fighters', {
    method: "POST",
    headers: {
      "Content-Type":"application/json",
      "Accept":"application/json"
    },
    body: JSON.stringify(data)
  })
  .then(res => res.json())
  .then(data => {
    renderFighter(data)
  })  
  
}

function removeFighter(event){
  let id = event.target.dataset.id
  fetch(`http://localhost:3000/fighters/${id}`, {
    method: "DELETE"
  })
  .then(res => res.json())
  .then(deletedFighter => {
    document.querySelector(`#fighter-${id}`).remove()
    console.log("remove?", deletedFighter)
  })
}