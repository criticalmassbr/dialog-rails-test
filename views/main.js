// import html modules
import error from './error.js';
import header from './header.js';
import jumbotron from './jumbotron.js';
import data from './data.js';
import footer from './footer.js';

// assemble index
const main = document.querySelector('#content');
main.insertAdjacentHTML('beforeEnd', error);
main.insertAdjacentHTML('beforeEnd', header);
main.insertAdjacentHTML('beforeEnd', jumbotron);
main.insertAdjacentHTML('beforeEnd', data);
main.insertAdjacentHTML('beforeEnd', footer);

// get html elements
const displayErrorElement = document.getElementById('displayError');

// display erro messages
const displayError = (err) => {
  displayErrorElement.innerHTML = err;
  displayErrorElement.style.display = 'block';
  setTimeout(() => { displayErrorElement.style.display = 'none'; }, 5000);
};

// call api and get users
const getUsers = async () => {
  let users = {};
  try {
    const response = await fetch("http://localhost:3000/users.json");
    users = await response.json();
    
  } catch (err) {
    displayError('error retrieving users:' + err);
  }
  console.log(users)
  return users;
};


getUsers();
