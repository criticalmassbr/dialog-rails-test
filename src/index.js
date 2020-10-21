// import stylesheets
import './view/css/style.css';

// import html modules
import error from './view/error';
import header from './view/header';
import jumbotron from './view/jumbotron';
import footer from './view/footer';

// assemble index
const main = document.querySelector('#content');
main.insertAdjacentHTML('beforeEnd', error);
main.insertAdjacentHTML('beforeEnd', header);
main.insertAdjacentHTML('beforeEnd', jumbotron);
main.insertAdjacentHTML('beforeEnd', footer);
