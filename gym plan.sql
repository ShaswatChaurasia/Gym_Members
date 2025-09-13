CREATE TABLE gym_plans (
    gender VARCHAR(10) NULL,
    goal VARCHAR(50) NULL,
    bmi_category VARCHAR(50) NULL,
    exercise_schedule TEXT NULL,
    meal_plan TEXT NULL
);

select *
from gym_plans;

select exercise_schedule 
from gym_plans 
where bmi_category='Normal weight';

# male and female users

select gender,count(*) as total
from gym_plans
group by gender;

--distinct
select distinct goal
from gym_plans;

--users

select goal,count(*) as total_users
from gym_plans
group by goal 
order by total_users desc;

-- bmi category
select bmi_category,count(*) as bmi_total
from gym_plans
group by bmi_category
order by bmi_total asc;

select bmi_category,gender,count(*) as total
from gym_plans
group by bmi_category,gender
order by total desc;

--

select gender,goal,bmi_category
from gym_plans
where exercise_schedule like '%weightlifting%';

SELECT gender, goal, meal_plan
FROM gym_plans
WHERE meal_plan LIKE '%protein%';


-- project

SELECT goal, exercise_schedule, COUNT(*) AS count_used
FROM gym_plans
GROUP BY goal, exercise_schedule
ORDER BY goal, count_used DESC;

SELECT bmi_category, meal_plan, COUNT(*) AS count_used
FROM gym_plans
GROUP BY bmi_category, meal_plan
ORDER BY bmi_category, count_used DESC;

SELECT goal, COUNT(*) AS total
FROM gym_plans
WHERE gender = 'Female'
GROUP BY goal
ORDER BY total DESC
LIMIT 1;




