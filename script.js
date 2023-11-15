let passwordInput = document.querySelector('#user-pwd');

let passwordConfInput = document.querySelector('#user-pwd-conf');

let submitBtn = document.querySelector('button.submit-btn');

submitBtn.addEventListener('click', function(e) {
  
  let messages = [];
  
  if(passwordInput.value !== passwordConfInput.value){
    e.preventDefault();

    passwordInput.classList.add('pwd-error')
    passwordConfInput.classList.add('pwd-error')

    let errorMsg = document.createElement('span')
    errorMsg.innerHTML = '<span class="pwd-error-msg"><strong>*</strong> Passwords do not match</span>'

    passwordInput.parentNode.appendChild(errorMsg);

    return

  } else {

    passwordInput.classList.remove('pwd-error');
    passwordConfInput.classList.remove('pwd-error');

  }

  submitBtn.click();

})