read -p "Please enter box number where you Want to place your Mark: " P1M
#We find out what line and column is the box in.
#then use sed give it line number and give it the occurence number
#sed then adds the tictactoe symbol of player.
if [[ $P1M -le 3 ]]
then
	row=1
	col=$P1M
	echo -e "P1M=$P1M\nrow=$row\ncol=$col\n"
	if [[ $col -eq 1 ]]
	then
		sed "2 s/|/|  O/1" TicTacToe.txt>TicTacToeG.txt
	elif [[ $col -eq 2 ]]
	then
		sed "2 s/|/|  O/2" TicTacToe.txt>TicTacToeG.txt
	elif [[ $col -eq 3 ]]
	then
		sed "2 s/|/|  O/3" TicTacToe.txt>TicTacToeG.txt
	fi
elif [[ $P1M -le 6 ]]
then
	echo -e "P1M=$P1M\nrow=$row\ncol=$col\n"
	row=2
	col=$(($P1M-3))
	if [[ $col -eq 1 ]]
	then
		sed "6 s/|/|  O/1" TicTacToe.txt>TicTacToeG.txt
	elif [[ $col -eq 2 ]]
	then
		sed "6 s/|/|  O/2" TicTacToe.txt>TicTacToeG.txt
	else
		sed "6 s/|/|  O/3" TicTacToe.txt>TicTacToeG.txt
	fi
elif [[ $P1M -le 9 ]]
then
	echo -e "P1M=$P1M\nrow=$row\ncol=$col\n"
	row=3
	col=$(($P1M-6))
	if [[ $col -eq 1 ]]
	then
		sed "10 s/|/|  O/1" TicTacToe.txt>TicTacToeG.txt
	elif [[ $col -eq 2 ]]
	then
		sed "10 s/|/|  O/2" TicTacToe.txt>TicTacToeG.txt
	else
		sed "10 s/|/|  O/3" TicTacToe.txt>TicTacToeG.txt
	fi
fi
echo -e "\n New Game\n"
cat TicTacToeG.txt
rm TicTacToeG.txt
