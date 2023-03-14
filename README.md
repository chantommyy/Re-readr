# Re:readr
> Live demo [_here_](https://www.re-readr.co.uk/)

<details>
<summary>Table of Contents</summary>

  - [About the Project](#about-the-project)
  - [Features](#features)
  - [Tech Stack](#tech-stack)
  - [Installation](#installation)
  - [How to contribute](#how-to-contribute)
  - [License](#license)
  - [The team](#the-team)
  
</details>


## About the project

With Re:readr, you can swap books you've finished reading for ones you're interested in 📚 Signing up for an account is all it takes to get started. 
Simply enter the book's ISBN code, upload it on the website and swap it for a book you like. The platform was built in just two weeks.

*How it works:*

- Register an account
- Enter the ISBN of your book to upload it on the platform
- Search for available books
- Send a swap request for the book you like
- Swap your book once your request is approved
- Leave a review

## Features

Adding a book with ISBN:

![ezgif com-gif-maker (6)](https://user-images.githubusercontent.com/74564476/224946145-11090a0f-51c4-4cb4-893d-aa7881170011.gif)

Sending a swap request:

![mobile (1)](https://user-images.githubusercontent.com/74564476/224948083-2e32cf41-103e-4a7d-b3d9-555b9b59c390.gif)

Accepting a swap request:

![ezgif com-crop (1)](https://user-images.githubusercontent.com/74564476/224951623-f26f92a3-a76b-4c34-8e17-3c78204d9439.gif)

Leaving a review:

![ezgif com-crop (2)](https://user-images.githubusercontent.com/74564476/224954497-ccf4300a-09f4-460f-97b0-2efeb1959acd.gif)


## Tech Stack

Re:readr is optimized for use on all devices, but for the best viewing experience, we recommend using a mobile device.

Frameworks & libraries used:

- [Ruby on Rails](https://rubyonrails.org/)
- [JavaScript](https://www.javascript.com/)
- [Stimulus](https://stimulus.hotwired.dev/)
- [Google Books API](https://developers.google.com/books/docs/v1/using)
- [CSS & SASS](https://sass-lang.com/)
- [Bootstrap](https://getbootstrap.com/)

Version control & deployment
- [GitHub](https://github.com/saidam90/fluffy_friend)
- [Heroku](https://fluffy-friend.herokuapp.com/)

## Installation

To run our app locally, you will need to have already installed [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html). Check them with:
```
$ yarn -v 
$ rails --version
```

If no version number is returned, please install [Yarn](https://classic.yarnpkg.com/en/docs/install#mac-stable) and/or [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) before continuing.


**Dependencies**

You'll also need to install all dependencies of the project with:
```
$ bundle install && yarn install
```

The `bundle` command installs all Ruby Gems specified in our Gemfile. The ```yarn install``` command retrieves all dependencies from the project’s package.json file.

Run the following command to create a database, load the schema, and initialize it with our seed data. 

```
$ rails db:create db:migrate db:seed
```


**Launch**🚀

Launch the app by running:
```
$ rails s
```
```
$ yarn build --watch
```
Then go to [localhost:3000](http://localhost:3000/)


## How to contribute

Feel free to fork our repo and create a pull request with any changes you'd like to see us incorporate. We are open to suggestions🙂

- Fork the Project
- Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
- Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
- Push to the Branch (`git push origin feature/AmazingFeature`)
- Open a Pull Request

## License

Created as part of the Le Wagon Full Stack Web Development bootcamp. Feel free to fork and enhance the platform.

## The team

Made with love by:

- [Saida Murtazali](https://github.com/saidam90)
- [Tommy Chan](https://github.com/chantommyy)
- [Maxime Sidonio](https://github.com/MximeS)
- [Dylan Dyhan](https://github.com/dillio523)
