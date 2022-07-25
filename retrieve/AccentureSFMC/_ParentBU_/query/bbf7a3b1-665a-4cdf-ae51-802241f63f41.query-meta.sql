Select
    D.Id as Id,
    case
        when D.Email = F1.EmailAddress then 20
        Else 0
    End as Form1_score,
    case
        when D.Email = F2.EmailAddress then 20
        Else 0
    End as Form2_score,
    case
        when D.Id = C.Id then 10
        Else 0
    End as Link_click_score,
    case
        when D.Id = O.Id then 10
        Else 0
    End as Email_open_score,
    case
        when D.Id = B.Id then 20
        Else 0
    End as Bounce_rate_score
From
    Demo_Contacts as D
    left join An_Form1 as F1 on D.Email = F1.EmailAddress
    left join An_Form2 as F2 on D.Email = F2.EmailAddress
    left join Data_View_Click as C on C.Id = D.Id
    left join Data_View_Open as O On O.Id = D.Id
    left join Data_View_Bounce as B On B.Id = D.Id