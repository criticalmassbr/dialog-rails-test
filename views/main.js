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
const usersTableElement = document.getElementById('users-table');
const fetchUsersBtn = document.getElementById('fetch-users-btn');

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
  return users;
};

// load user to page
function loadUsersToPage() {
  const myUsers = getUsers();
  
  myUsers.then(response => {
    var tableHTML = "<tr>";
    for (var headers in response[0]) {
      tableHTML += "<th>" + headers + "</th>";
    }
    tableHTML += "</tr>";

    for (var eachItem in response) {
      tableHTML += "<tr>";
      var dataObj = response[eachItem];
      for (var eachValue in dataObj){
        tableHTML += "<td>" + dataObj[eachValue] + "</td>";
      }
      tableHTML += "</tr>";
    }
    usersTableElement.innerHTML = tableHTML;
  });
  
}

// call loadUsersToPage on click
fetchUsersBtn.addEventListener('click', ()=>{
  loadUsersToPage();
})
