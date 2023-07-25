# LaughOutLoud
#It's a trial 
import random

# Define the possible choices
choices = ["snake", "water", "gun"]

# Get the user's choice
user_choice = input("Enter your choice (snake, water, gun): ").lower()

# Get the computer's choice
computer_choice = random.choice(choices)

# Compare the choices and determine the winner
if user_choice == computer_choice:
  print("Tie!")
elif user_choice == "snake":
  if computer_choice == "water":
    print("You win!")
  else:
    print("You lose!")
elif user_choice == "water":
  if computer_choice == "gun":
    print("You win!")
  else:
    print("You lose!")
elif user_choice == "gun":
  if computer_choice == "snake":
    print("You win!")
  else:
    print("You lose!")

