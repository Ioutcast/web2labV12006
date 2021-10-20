let form = document.querySelector('.formWithValidation');
let textInputR = form.querySelector('.textInputR');
let textInputY = form.querySelector('.textInputY');
let fields = form.querySelectorAll('.field');
let selectInputX = form.querySelector('.selectInputX');
let errDialog = form.querySelector('.errDialog');


form.addEventListener('submit', function (event) {

    event.preventDefault();

    removeValidation();
    let boolean2 = checkAllFieldsPresence();

    let booleanY = checkInputTextY();

    let booleanR = checkInputTextR();

    let boolean = checkInputSelection();


    if (boolean && booleanY && boolean2 && booleanR) {

        $(this).unbind('submit').submit()

    }
});

let generateError = function (text) {
    let error = document.createElement('div')
    error.className = 'error'
    error.style.color = 'red'
    error.innerHTML = text
    return error
};

let removeValidation = function () {
    let errors = form.querySelectorAll('.error')
    for (let i = 0; i < errors.length; i++) {
        errors[i].remove()
    }
};

let checkAllFieldsPresence = function () {
    let b = true
    for (let i = 0; i < fields.length; i++) {
        if (!fields[i].value) {
            showMessageBox('ошибка')
            console.log('Незаполненное значение', fields[i])
            let error = generateError('Не может быть пустым!');
            fields[i].parentElement.insertBefore(error, fields[i]);
            b = false
        }
    }
    return b

};
let checkInputTextY = function () {
    let bool = true;
    if (isNaN(textInputY.value.replace(",", ".")) ||  textInputY.value.replace(",", ".")==="" ) {
        showMessageBox('ошибка');
        var errorText = generateError('Введенное значение не является числом.')
        try {
            textInputY.parentElement.insertBefore(errorText, textInputY)
        } catch (e) {
            //Uncaught TypeError: Failed to execute 'insertBefore' on 'Node': parameter 1 is not of type 'Node'
        }
        return false
    } else if (textInputY.value.replace(",", ".") >= 5 || textInputY.value.replace(",", ".") <= -5) {
        showMessageBox('ошибка');
        bool = false;
        errorText = generateError('Число не попало в заданный диапозон');
    }
    try {
        textInputY.parentElement.insertBefore(errorText, errDialog)
    } catch (e) {
        console.log("wtf");
    }
    return bool
};
let checkInputTextR = function () {
    let bool1 = true;
    if (isNaN(textInputR.value.replace(",", ".")) ||  textInputR.value.replace(",", ".")==="") {
        showMessageBox('ошибка');
        var errorText = generateError('Введенное значение не является числом.')
        try {
            textInputR.parentElement.insertBefore(errorText, textInputR)
        } catch (e) {
            //Uncaught TypeError: Failed to execute 'insertBefore' on 'Node': parameter 1 is not of type 'Node'
        }
        return false;
    } else if (textInputR.value.replace(",", ".") >= 5 || textInputR.value.replace(",", ".") <= 2) {

        showMessageBox('ошибка');
        bool1 = false;
        errorText = generateError('Число не попало в заданный диапозон');
    }
    try {
        textInputR.parentElement.insertBefore(errorText, textInputR)
    } catch (e) {
        //Uncaught TypeError: Failed to execute 'insertBefore' on 'Node': parameter 1 is not of type 'Node'
    }
    return bool1
};

let checkInputSelection = function () {
    let bool123 = true
    let value = $('.selectOptionX').val();
    if (value === "") {
        bool123 = false
        console.log('Незаполненное значение', selectInputX)
        showMessageBox('ошибка')
        let errorRadio = generateError("Вы не выбрали значение")
        selectInputX.parentElement.insertBefore(errorRadio, selectInputX)
    }
    return bool123
};
