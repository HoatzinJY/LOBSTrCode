classdef team
    %TEAM Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        school;
        name;
        number;
        rounddetails; %make this a 1D array of round structures
        totalscore;
        totalwins;
        totalloss;
        totaldraw;
        gamepoints;
    end
    
    methods
        function obj = maketeam(teamname, teamschool, teamnumber)
            obj.name = teamname;
            obj.school = teamschool;
            obj.number = teamnumber;
        end

        function updateround(roundnumber, )
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

