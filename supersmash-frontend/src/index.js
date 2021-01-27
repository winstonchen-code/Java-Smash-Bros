// Code here
document.addEventListener('DOMContentLoaded', function(){

    document.querySelector('#fighterForm').addEventListener("submit", addingFighter)

    document.querySelector('#stageForm').addEventListener("submit", addingStage)

    document.querySelector('#smashBtn').addEventListener('click', getFighters)
    document.querySelector('#smashBackBtn').addEventListener('click', clearFighter)

    document.querySelector('#stageBtn').addEventListener('click', getStages)
    document.querySelector('#stageBackBtn').addEventListener('click', clearStage)


})