# My_TIC_TAC_TOE__Solo


<h3 align="center">Tic Tac Toe</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)](https://github.com/vmwhoami/My_TIC_TAC_TOE__Solo/issues)
[![GitHub2 Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)](https://github.com/vmwhoami/My_TIC_TAC_TOE__Solo/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

## 📝 Content

<p align="center">
<a href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#installing">Installing</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#built_using">Built with</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="#authors">Authors</a>
</p>

## 🧐 About <a name = "about"></a>

Built the project to better understand object oriented programming principles in Ruby. It's a self-test to see if my Ruby knowledge would allow building a fluid grid for
 the Tic -Tac -Toe game.

![Screenshot](https://raw.githubusercontent.com/vmwhoami/My_TIC_TAC_TOE__Solo/work/assets/img/Fluid_grid.jpg)

![Screenshot](https://raw.githubusercontent.com/vmwhoami/My_TIC_TAC_TOE__Solo/work/assets/img/3X3.jpg)

## 🔧 Built with<a name = "built_using"></a>

- [Ruby](https://www.ruby-lang.org/);

### 🛠 Installing <a name = "installing"></a>

Clone and run this repository by running these commands on the terminal:

```
- git clone https://github.com/vmwhoami/My_TIC_TAC_TOE__Solo
- cd bin/
- Run ruby main.rb
```

In case you don't have ruby installed you can run it inside docker container

```
docker-compose up --build -d
```
then atach to that container and inside the container run
```
/usr/src/app/bin# ruby main.rb 
```


## Game rules

- There are only 2 players.
- There are 2 pieces of tokens — X and O
- This is a fluid board so you can choose the size of the grid
- Players take turns playing by entering their token into empty cells.
- The game ends in a draw if all all cells are occupied and there is no winner.

## How do we play Tic Tac Toe

- Players take turns playing.
- 1st turn — Player 1
- Player 1 places their token (X) in only 1 square of their choice (it has to be between 1 and and the fluid and the size you give it, can't be letters, negative numbers, or a position already taken by the other player).
- 2nd turn — Player 2.
- Player 2 places their token (O) in only 1 square of their choice, except they can’t touch the square that Player 1’s token already fills.
- 3rd turn- Player 1 …. and the cycle continue until a player wins or there’s a tie game.
- There are 8 winning combinations: Top row, Middle row, Bottom row, Left column, Middle column, Right column, Left diagonal, and Right diagonal.
- There’s a draw/tie when the entire board is filled with X’s and O’s but no winning combinations can be found.

## ✒️ Authors <a name = "authors"></a>

👤 **Vitalie Melnic**

- Github: [@vmwhoami](https://github.com/vmwhoami)
- Twitter: [@vmwhoami](https://twitter.com/vmwhoami)
- Linkedin: [Vitalie Melnic](https://www.linkedin.com/in/vitalie-melnic-5802198a/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!



## 👍 Show your support

Give a ⭐️ if you like this project!

## 📝 Acknowledgements

- Microverse and The Odin Project

## 📝 License

This project is free to use as learning purposes. For any external content (e.g. logo, images, ...), please contact the proper author and check their license of use.