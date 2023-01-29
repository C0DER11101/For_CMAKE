#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<time.h>
#include<string.h>

void triangle();
int main(void)
{
	srand(time(NULL));
	char *playerName=(char*)malloc(100*sizeof(char));
	unsigned int CompScore=0, PlayerScore=0, chance=6;
	char choice, compChoice; // for player and the computer!!
	const char CompChoice[]={'r', 'p', 's'};

	printf("\n\t\t**WELCOME TO ROCK-PAPER-SCISSOR\t\t");
	printf("\nGame instructions:\n");
	printf("\nPress \"R\" for rock, \"P\" for paper and \"S\" for scissor\n");
	printf("Please enter your name: ");
	scanf("%s", playerName);

	printf("\nStarting the game...\n");

	system("sleep 1");
	system("clear");

	while(chance)
	{
		printf("%s, press your key!\n", playerName);
		scanf(" %c", &choice);

		printf("\nYou chose: ");
		if(tolower(choice)=='r')
			printf("Rock\n");

		else if(tolower(choice)=='p')
			printf("Paper\n");

		else if(tolower(choice)=='s')
			printf("Scissor\n");
		else
		{
			printf("Invalid input!!Enter again!!\n");
			continue;
		}

		compChoice=CompChoice[0+(rand()%3)];
		printf("\nI chose: ");

		if(tolower(compChoice)=='r')
			printf("Rock\n");

		else if(tolower(compChoice)=='p')
			printf("Paper\n");

		else if(tolower(compChoice)=='s')
			printf("Scissor\n");


		if(tolower(choice)=='r' && tolower(compChoice)=='s')
		{
			PlayerScore=PlayerScore*2+1;
		}
		else if(tolower(choice)=='s' && tolower(compChoice)=='r')
		{
			CompScore=CompScore*2+1;
			chance-=1;
			printf("\nYou have got %d chance(s) left!!\n", chance);
		}
		else if(tolower(choice)=='r' && tolower(compChoice)=='p')
		{
			CompScore=CompScore*2+1;
			chance-=1;
			printf("\nYou have got %d chance(s) left!!\n", chance);
		}
		else if(tolower(choice)=='p' && tolower(compChoice)=='r')
		{
			PlayerScore=PlayerScore*2+1;
		}
		else if(tolower(choice)=='s' && tolower(compChoice)=='p')
		{
			PlayerScore=PlayerScore*2+1;
		}
		else if(tolower(choice)=='p' && tolower(compChoice)=='s')
		{
			CompScore=CompScore*2+1;
			chance-=1;
			printf("\nYou have got %d chance(s) left!!\n", chance);
		}

		system("sleep 3");
		system("clear");

	}

	printf("%s's score: %d\n", playerName, PlayerScore);
	printf("My score: %d\n", CompScore);

	if(PlayerScore>CompScore)
	{
		printf("\nCongratulations %s! You won the game!!\n", playerName);
		triangle();
	}

	else if(CompScore>PlayerScore)
	{
		printf("\nI won the game!!\n");
	}

	else
	{
		printf("\nIt's a draw!!\n");
	}

	free(playerName);

	return 0;
}
