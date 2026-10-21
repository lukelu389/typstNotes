#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 4 - Labour Market"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Unemployment rate is obtained monthly from Labour Force Survey

Civilian working population:

- 15 years old and older

- excludes people are living on reserves or settlements

- excludes people in prison and long-term care facilities

- exludes Canadian Armed Forces

#defn[*Employment* \ 

A person is *employed* if, during the reference week:
- did any paid work including self-employment

- had a job but was temporarily absent because of illness, vacation, a labour dispute, or another recognized reason

A person without work is *unemployed* if the are available for work and meet at least one of the three:

- *actively* searched for work in the previous four weeks

- is temporary layoff and expects to return

- has a job schedule to begin within four weeks

A person is *not in labour force* when they are neither employed nor unemployed

- retirees, many full-time student, and unpaid caregivers

- people unable or choosing not to work

- people who want a job but are not currently searching
]



\
*Discouraged searchers*: want towk and are available, but have stoppped searching becasue they believe suitable work is unavailable. Included in R8.

\
#defn[*Rates* \ 

Unemployment rate $"UR" = U / "LF" dot 100$ is R4 from published StatCan data

Employment Rate $"ER" = E / "CIVPop" dot 100$

Larbour Force Particiaption Rate $"LFPR" = "LF"/"CIVPop" dot 100$

$U$ is the number of unemployed, $"LF"$ is the labour force, $E$ is the number of employed people

]


$"CIVPop"$ is the civilian, non-instutitional population ageed 15+

*Seasonal adjustment* removes these recurring patterns, making changes in
underlying labour-market conditions easier to see.

*Unemployment duration* is the length of a person's current unempoyment spell when surveyed. 

- StatCan defines *long-term unemployment* as 27 weeks+, it can rise because workers are leaving unemployment more slowly, not because more workers are entering it.

- Long spells bring larger income losses and may make re-employment more diffcult

*Note*: the unemployment rate along does not tell how quickly workers enter and leave unemployment.

#defn[*Types of Unemployment* \ 
#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Type], [Source], [Example],
    [Frictional], [normal search and matching], [worker switch between jobs],
    [Structural], [mismatch of skills, location, or industry], [a displaced worker whose former industry has permanently contracted], 
    [Cyclical], [weak aggreate demand], [layoffs during recession]
)
]

Natural rate of employment(full-employment) has correlation with frictional unemployment which will never be 0

*Job vacancy* is an unfilled position that an employer is actively seeking. to fill. 

*Beveridge curve* represents the relationship vaccancies and unemployment.

#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Job vacancy], [Unemployment], [Economy],
    [High], [Low], [Shortage of workers],
    [High], [High], [Mismatch of jobs and workers],
    [Low], [High], [Shortagte of jobs]
)

Prime-age workers are aged 25-54.

*OECD harmonised employment rate* applies common definitions
to improve comparisons across countries
