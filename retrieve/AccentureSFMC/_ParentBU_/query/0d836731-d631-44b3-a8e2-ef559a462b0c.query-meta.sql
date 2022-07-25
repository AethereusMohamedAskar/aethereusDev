Select
    D.Id as Id,
    D.FirstName as FirstName,
    D.LastName as LastName,
    D.Gender as Gender,
    D.Phone As Phone,
    (
        A.Form1_score + A.Form2_score + A.Email_open_score + A.Link_click_score - A.Bounce_rate_score
    ) as Contact_Engagement_Score
From
    Demo_Contacts as D
    inner join Audience_Engagement_Score as A on A.Id = D.id