# acceso

acceso is an open-source web application developed by Tish Chungoora. The app was built in just under 3 weeks and is aimed at social workers, parents and carers who work with non-verbal autistic individuals and need to exchange ideas, intention and emotion with cards.

Central to acceso is a Picture Exchange Communication System (PECS) where the application exposes over 570 cards which are the building blocks for composing a conversation board. The board can be adjusted on demand and can be played back in audio form for further reinforcement, communication and learning purposes.

A deployed version of the web application can be accessed [here](https://acceso.netlify.com/).

![Image of acceso](https://i.imgur.com/ewUGFmI.png)

## Motivation

- The problem statement, which forms the premise for the development of acceso, comes from actual conversations with social workers who work with service users with autism. The use of PECS cards and boards is still presently a very manual process which can be inefficient since the cards need to be printed and physically laid out on a board, which poses portability and reuse issues.
- In order to utilise a full tech stack to develop acceso, the application was built as a React-based web app with a Rails backend to showcase the use of React components, routes and states alongside Ruby on Rails API.

## Featured Screenshots

![Composing a PECS board using PECS cards](https://i.imgur.com/Nqekt4u.png)

![Saved PECS board for quickly reacting to different behaviours](https://i.imgur.com/oLN0RTr.png)

## Main Features

- Catalogue of more than 570 PECS cards which can be mounted on a PECS board. Cards carry rich information and can be individually viewed to learn more about them.
- PECS cards are fully searchable by title or by category & sub-category.
- PECS cards can be added to or removed from the PECS board on demand. The board implements a limit of up to 6 PECS cards per board in order ensure efficient exchange of information.
- Audio playback functionality for the PECS board as well as when viewing individual PECS cards or when accessing saved boards.
- Secure user log in and log out. When accessing the login page, a test account has been provided for demoing purposes.
- On-demand saving of PECS boards when logged in and the ability to associate specific kinds of behaviours during the save process.
- When viewing the Saved Boards page, it is possible to use filters to quickly sift through the saved boards in order to react to certain behaviours quickly.
- Consistent, colour-coded and user-friendly interface which is fully mobile-responsive.

## Stack

- Ruby on Rails API, Ancestry gem to manage taxonomical data relationships, JWT gem for user authentication, Active Record ORM and PostgreSQL database for the [backend](https://github.com/tishchungoora/acceso-backend).
- The backend is deployed to Heroku.
- React, JavaScript, HTML, CSS, Bootstrap and ResponsiveVoice API for the [frontend](https://github.com/tishchungoora/acceso-frontend).
- The frontend is deployed to Netlify.

## Acknowledgements

- [MyPECS.com](http://www.mypecs.com/)
- [PECS USA](https://pecsusa.com/)
- [Flaticon](https://www.flaticon.com/)
- [ResponsiveVoice API](https://responsivevoice.org/)

## License

MIT © @tishchungoora