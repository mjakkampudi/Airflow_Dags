CREATE TABLE IF NOT EXISTS edx_enrollments.INFORMATION AS
(SELECT `Course_id`,
       SPLIT(Course_id, '/') [OFFSET(0)] Institution,
       SPLIT(Course_id, '/')[OFFSET(1)] Course_number,
       SPLIT(Course_id, '/')[OFFSET(2)] Course_term,
`Course_Short_Title`,
`Course_Long_Title` ,
`Userid_DI` ,
`Registered` ,
`Viewed` ,
`Explored`,
`Certified`,
`Country` ,
`LoE_DI` ,
`YoB` ,
`Age` ,
`Gender`,
`Grade` ,
`nevents` ,
`ndays_act` ,
`nplay_video` ,
`nchapters`,
`nforum_posts` ,
`roles` ,
`incomplete_flag`
FROM `data-eng1.edx_enrollments.Information_temp`);