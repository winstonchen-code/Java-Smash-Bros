function fetchStages(){
    fetch('http://localhost:3000/stages')
    .then(res => res.json())
    .then(stages => {
        stages.forEach(renderStage)
    })
}

function renderStage(stage){
    let ul = document.querySelector("#stages")
    let li = document.createElement("li")
    li.innerText = stage.name
    ul.appendChild(li)
}

