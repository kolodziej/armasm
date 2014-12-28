NAME=program

all: $(NAME)

$(NAME).o: $(NAME).cpp
	g++ $(NAME).cpp -o $(NAME).o

$(NAME)_asm.o: $(NAME).s
	as -o $(NAME)_asm.o $(NAME).s

$(NAME): $(NAME).o $(NAME)_asm.o
	g++ -o $(NAME).bin $(NAME).o $(NAME)_asm.o
