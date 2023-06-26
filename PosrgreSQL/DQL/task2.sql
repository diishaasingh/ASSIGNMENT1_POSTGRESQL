-- Task 2(Update the members phone with manager’s phone number if the member’s phone number is NULL. )

update member set phone = (
        select phone from member 
        WHERE manager.memberid = m.coachid
    )
WHERE phone is NULL