select
    j.JobID,
    j.EmailName,
    j.DeliveredTime
from
    [_Job] j
where
    j.EmailID = '14472'