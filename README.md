# CHEKUDAFY REACT

## RUN
  - NOTE THIS IS FOR zsh terminals only. (If you need to do it in bash, steps are similar but I dont explain them in here)
  - Create a folder called bin in your computer root directory
  - Copy chekudafy.zsh file in that directory
  - Open your ~/.zshrc and add this line bellow

    - alias chekudafy="~/bin/createReactFolder.zsh"

  From your project root folder, run the script with the following structure

  - First parameter => Destination, from current folder . ie: src/shared
  - Second parameter => Name of folder and files
  - Third Parameter => Styles, add styles extension if you want to create styles file

NOW YOU CAN USE CHEKUDAFY MAGIC
  ie: ** chekudafy src/shared/containers HomepageContainer scss**