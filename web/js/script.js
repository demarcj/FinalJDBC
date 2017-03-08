function valForm() {
    valFirst();
    valLast();
    valEmail();
    valNum();
    if(valFirst() === false || valLast() === false || valEmail() === false || valNum() === false){
        return false;
    }
    return true;
}

function valNum() {
    var numValue = document.getElementById("phoneNum").value;
    var getIdNotNum = document.getElementById("notNum");
    if(numValue === ""  || numValue === null){
        getIdNotNum.innerHTML = "This field is empty!";
        return false;
    }
    if(isNaN(numValue)){
        getIdNotNum.innerHTML = "This field should not contain letters or symbols!";
        return false;
    }
    if(numValue < 999999999){
        getIdNotNum.innerHTML = "Not enough numbers!";
        return false;
    }
    getIdNotNum.innerHTML = "";
    return true;
}

function valEmail() {
    var getIdNotEmail = document.getElementById("notEmail");
    var temp = document.getElementById("email").value;
    var emailValue = temp.trim();
    if(emailValue === ""  || emailValue === null){
        getIdNotEmail.innerHTML = "This field is empty!";
        return false;
    }
    if(emailValue.indexOf("@") <= 0 || emailValue.indexOf(".") <= 3 || emailValue.length < 6){
        getIdNotEmail.innerHTML = "This is not an email address!";
        return false;
    }
        getIdNotEmail.innerHTML = ""
        return true;
}
function valFirst() {
    var getIdNotFirst = document.getElementById("notFirst");
    var temp = document.getElementById("firstName").value;
    var firstValue = temp.trim();
    if(firstValue === ""  || firstValue === null){
        getIdNotFirst.innerHTML = "This field is empty!";
        return false;
    }
    getIdNotFirst.innerHTML = "";
    return true;
}
function valLast() {
    var getIdNotLast = document.getElementById("notLast");
    var temp = document.getElementById("lastName").value;
    var lastValue = temp.trim();
    if(lastValue === ""  || lastValue === null){
        getIdNotLast.innerHTML = "This field is empty!";
        return false;
    }
    getIdNotLast.innerHTML = "";
    return true;
}

