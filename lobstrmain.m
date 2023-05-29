teamfilename = 'matlabtesting.xlsx' % put the name of your file full of team lists here

function createteams(filename)
    teamtable = readtable (filename)
    numteams = height(teamtable) %enter total number of teams here 
    teamlist = (numteams, 1); % work on declarining appropriately sized array
    for i = 1:numteams
        school = teamtable(i, "SchoolAffiliation");
        teamnumber = teamtable(i, "TeamNumber");
        teamname = teamtable(i, "TeamName")
        teamlist(1,0) = team(teamname, school, teamnumber);
    end
end 

function addround(myroundnumber, myteamonenumber, myteamtwonnumber, myteamonescore, myteamtwoscore) 
    % this makes one round structure based on information that is inputted 
    % note on points/scoring: a tie is 
    if (myteamonescore > myteamtwoscore)
        teamonegamepoint = 1;
        teamtwogamepoint = 0;
    elseif (myteamonescore == myteamtwoscore)
        teamonegamepoint = 0.5;
        teamtwogamepoint = 0.5;
    else
        teamonegamepoint = 0;
        teamtwogamepoint = 1;
    end

    teamoneround = struct(number = myroundnumber, score = myteamonescore, gamepoints = teamonegamepoint);
    teamtworound = struct(number = myroundnumber, score = myteamtwoscore, gamepoints = teamtwogamepoint);

    % find the team one object and add this to the round array

end 
