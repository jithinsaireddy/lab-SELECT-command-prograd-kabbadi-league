## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**

-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**

-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**

-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**

-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**

-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**

-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**

-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**

-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**

-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**

-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**

-- 17. **Write a query to display the Coach's name of the team `Iran`**

-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**

-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**

SELECT name FROM team
ORDER BY name ;


SELECT name FROM player 
WHERE name LIKE 's%' AND country!='South Africa'
ORDER BY name DESC;

SELECT event_no,clock_in_seconds FROM event
ORDER BY event_no ASC; 

SELECT event_no FROM event
WHERE raid_points + defending_points >= 3
ORDER BY event_no ; 

SELECT name FROM player
WHERE (country = 'India' OR country = 'Iran')
ORDER BY name ASC;

SELECT name FROM player
WHERE (country != 'India' AND country != 'Iran')
ORDER BY name ASC; 


SELECT name FROM skill
WHERE name LIKE 'Defend%'
ORDER BY name ASC;


SELECT stadium_name FROM venue
WHERE stadium_name LIKE '%Complex'
ORDER BY stadium_name ASC;

SELECT id FROM outcome
WHERE score < 35
ORDER BY id DESC;


SELECT game_date FROM game
WHERE game_date BETWEEN TO_DATE('01-JAN-2020', 'DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY game_date DESC;


SELECT name FROM player
WHERE skill_id > 1
ORDER BY name ASC;


SELECT event_no,raid_points,defending_points FROM event,game
WHERE innings_id = 1 AND game_date = TO_DATE('26-JAN-2020', 'DD-MM-YYYY')
ORDER BY event_no ASC;

SELECT winner_team_id FROM outcome,game,team
WHERE game_date = TO_DATE('09-MAR-2020', 'DD-MM-YYYY')
ORDER BY name ASC;

SELECT name FROM game,player,outcome
WHERE game_date = TO_DATE('09-MAR-2020', 'DD-MM-YYYY')
ORDER BY player_of_match ASC;


SELECT name FROM player
WHERE skill_id=3
ORDER BY name ASC;

SELECT stadium_name FROM game,venue
WHERE game_date = TO_DATE('09-MAR-2020', 'DD-MM-YYYY')
ORDER BY game.venue_id ASC;

SELECT coach FROM team,player
WHERE country = 'Iran'
ORDER BY team.name;


select event_no,defending_points FROM event,player
WHERE player.name = 'Fazel Atrachali'
ORDER BY event.event_no;

SELECT name FROM team,outcome,game
WHERE game_date BETWEEN TO_DATE('01-MAR-2020', 'DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY team.name;

SELECT name FROM player,outcome,game
WHERE game_date BETWEEN TO_DATE('01-MAR-2020', 'DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY player.name;






























