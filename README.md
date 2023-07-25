# LaughOutLoud
import random

# Define the possible choices
choices = ["snake", "water", "gun"]

user_choice = input("Enter your choice swg: ").lower()

computer_choice = random.choice(choices)

if user_choice == computer_choice:
  print("Same bro try again lol")
  
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

