# Math Game

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Classes

## Game

### State:

### Behaviour

- start which will create 2 Player class objects
- game loop that initializes new Turn class object
- end

## Player

### State:

- name
- lives

### Behaviour

- allows access to change lives, read names

## Turns

### State:

- current_player

### Behaviour

- creates new question class objects
- asks current_player question and answers

## Question

### State:

- question
- answer

### Behaviour

- creates a question and answer upon initializing
- allows access to the question string and answer integer
