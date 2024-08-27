# Use the official Ruby image
FROM ruby:3.2.2

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy all files from current directory to working directory in container
COPY . .

# Change directory to where the main.rb file is located
WORKDIR /usr/src/app/bin

# docker-compose run tictactoe
# Command to run your Tic-Tac-Toe game
CMD ["ruby", "main.rb"]