// Code here
document.addEventListener('DOMContentLoaded', function(){
    document.querySelector('form').addEventListener("submit", addingFighter)
    fetchStages()
    fetchFighters()
})